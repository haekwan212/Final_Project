package spring.siroragi.goods;


import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import spring.kh.siroragi.CommandMap;
import spring.kh.siroragi.Paging;
import spring.siroragi.review.ReviewService;


@Controller
public class GoodsController {
	
	@Resource(name="reviewService")
	private ReviewService reviewService;
	
	@Resource(name = "goodsService")
	private GoodsService goodsService;
	
		
		//new태그 날짜조정
		public static final int DATE_DATE=10; 
		//페이징 숫자
		public static final int pagingSet=5; 
	

	//페이지이동 및 검색
	@RequestMapping(value="/goods/goodsCategory")
	public ModelAndView goodsCategory(HttpServletResponse response, HttpServletRequest request,CommandMap Map) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("goodsCategory");
		
		String isCategory=(String)Map.getMap().get("category");
		System.out.println("카테고리 는 "+isCategory);

		String searchCheck=(String)Map.getMap().get("searchCheck");
		Map.getMap().put("colorCheck",null);
		
		//정렬
		String sort=(String)Map.getMap().get("sort");
		if(sort!=null){
			System.out.println("솔트값은? " + sort);
			mv.setViewName("goodsSort");
			//List<Map<String,Object>> goodsList1=goodsService.goodsRank("OUTER");
			//System.out.println("사이즈 : " + goodsList.size());
			//mv.addObject("goodsList",goodsList1);
			mv.addObject("sort",sort);
		}
		else{
			sort ="2"; //기본 신상품에 오게
			mv.addObject("sort",sort);
		}
		Map.getMap().put("sort",sort);
		
		
		//Map.getMap().put("isCategory", isCategory);
		
		List<String> goodsClass = new ArrayList<>();
		List<Map<String,Object>> goodsRank = null;
		List<Map<String,Object>> goodsList = null;
		if(isCategory.equals("OUTER")){
			goodsClass.add("가디건");
			goodsClass.add("자켓");
			goodsClass.add("점퍼&패딩");
			goodsClass.add("코트");
			goodsClass.add("블레이저");
			
			//System.out.println("서치체크:"+searchCheck);
/*			if(searchCheck==null){
				goodsList=goodsService.goodsCategory(isCategory);
			}*/
			
			goodsList=goodsService.goodsCategory(Map.getMap());
			goodsRank=goodsService.goodsRank(isCategory);
			

		}
		else if(isCategory.equals("TOP")){
			goodsClass.add("티셔츠");
			goodsClass.add("셔츠");
			goodsClass.add("니트&스웨터");
			goodsClass.add("조끼");
			
			goodsList=goodsService.goodsCategory(Map.getMap());
			goodsRank=goodsService.goodsRank(isCategory);
		}
		else if(isCategory.equals("PANTS")){
			goodsClass.add("면바지");
			goodsClass.add("청바지");
			goodsClass.add("슬랙스");
			goodsClass.add("반바지");
			
			goodsList=goodsService.goodsCategory(Map.getMap());
			goodsRank=goodsService.goodsRank(isCategory);
		}
		else if(isCategory.equals("SHOES")){
			goodsClass.add("구두");
			goodsClass.add("스니커즈");
			
			goodsList=goodsService.goodsCategory(Map.getMap());
			goodsRank=goodsService.goodsRank(isCategory);
		}
		else if(isCategory.equals("ACC")){
			goodsClass.add("가방");
			goodsClass.add("벨트");
			goodsClass.add("ETC");
			
			goodsList=goodsService.goodsCategory(Map.getMap());
			goodsRank=goodsService.goodsRank(isCategory);
		}
		
		//sale&New 로직 시작
		
		Calendar today = Calendar.getInstance();
		Date d = new Date(today.getTimeInMillis());
		
		//new태그위해 선언
		 Calendar newCal = Calendar.getInstance();
		 Date newDate =new Date();
		    

		for(int i=0; i<goodsList.size();i++){
			if(goodsList.get(i).get("GOODS_SALEDATE")!=null && goodsList.get(i).get("GOODS_DCPRICE") != null){
				//sale태그 조건
				Date dDay = (Date) goodsList.get(i).get("GOODS_SALEDATE");
				if (dDay.getTime() < d.getTime()) {
					goodsList.get(i).remove("GOODS_SALEDATE");
					goodsList.get(i).remove("GOODS_DCPRICE");
				}
			}
			
			//New태그 조건
			Date newDay = (Date) goodsList.get(i).get("GOODS_DATE");
			newCal.setTime(newDay);//Data값 캘린더로 변경
			newCal.add(Calendar.DATE, DATE_DATE);// +2주
			
			newDate=new Date(newCal.getTimeInMillis());
			goodsList.get(i).put("GOODS_NEWDATE", newDate);
			
			//hurry up 태그조건
			//goodsList.get(i).put("AMOUNT", goodsList.get(i).get("AMOUNT"));
			//hurryUp=(Integer)goodsList.get(i).get("AMOUNT");
			
			
		}
		for(int i=0; i<goodsRank.size();i++){
			if(goodsRank.get(i).get("GOODS_SALEDATE")!=null && goodsRank.get(i).get("GOODS_DCPRICE") != null){
				//sale태그 조건
				Date dDay = (Date) goodsRank.get(i).get("GOODS_SALEDATE");
				if (dDay.getTime() < d.getTime()) {
					goodsRank.get(i).remove("GOODS_SALEDATE");
					goodsRank.get(i).remove("GOODS_DCPRICE");
				}
			}
			
			//New태그 조건
			Date newDay = (Date) goodsRank.get(i).get("GOODS_DATE");
			//System.out.println("newDay는 : "+newDay);
			newCal.setTime(newDay);//Data값 캘린더로 변경
			newCal.add(Calendar.DATE, DATE_DATE);// +2주
			
			newDate=new Date(newCal.getTimeInMillis());
			//System.out.println("2주후 newDate는 : "+newDate);
			goodsRank.get(i).put("GOODS_NEWDATE", newDate);
			
			//hurry up 태그조건
			//goodsRank.get(i).put("AMOUNT", goodsRank.get(i).get("AMOUNT"));
		}
		//today.add(Calendar.DATE, 10);
		mv.addObject("nowDate",d); //현재시간 보내기
		//sale&New 로직 끝

		
		System.out.println("굿즈 클래스 : " +goodsClass.size());
		//System.out.println("굿즈 리스트 : " +goodsList.size());
		System.out.println("굿즈 랭크 : " +goodsRank.size());
		
		mv.addObject("goodsList",goodsList);
		mv.addObject("isCategory",isCategory);	
		mv.addObject("goodsRank",goodsRank);
		mv.addObject("goodsClass",goodsClass);
		

		if(searchCheck!=null){  //★서치체크(살림)
								//검색했을때만 들어온다 or 검색후 정렬할때
		System.out.println("검색조건사용");
		
		//컬러검색 시작
		try { //컬러를 하나만 체크하면 String값으로 받기때문에 try catch
			String[] color=(String[])Map.getMap().get("myColor");
			
			if(color!=null)
			{
				for(int i =0;i<color.length;i++){
				System.out.println("다중컬러 선택" + color[i]);
				}
				Map.getMap().put("colorCheck","ON2");
				Map.getMap().put("color",color);
			}
		}catch (Exception e) {
			String color=(String)Map.getMap().get("myColor");
			
			if(color!=null)
			{
				System.out.println("원컬러 선택" + color);	
				Map.getMap().put("colorCheck","ON1");
				Map.getMap().put("color",color);
			}
			
		}
		//컬러검색끝

			/* 구 컬러검색
			 * try {
				String[] color=(String[])Map.getMap().get("color[]");
				int st=123;
				mv.addObject("BLACK",st);
				System.out.println(color[0]);
				if(color!=null){
					for(int i=0;i<color.length;i++){
						Map.getMap().put("colorCheck","ON2");
						Map.getMap().put("color",color);
						System.out.println("호우:" +color[i]);
					}
				}
			} catch (Exception e) {
				String color=(String)Map.getMap().get("color[]");
				mv.addObject("color",color);

				if(color!=null){
					System.out.println("호우1:" +color);
					Map.getMap().put("colorCheck","ON1");
					Map.getMap().put("color",color);
				}
			}*/
			
			//가격 검색
			String[] priceRange=(String[])Map.getMap().get("priceRange");
		//	if(priceRange!=null) 검색을하면 null일수가 없어서 뺐다
				String pr1=priceRange[0];
				String pr2=priceRange[1];
				
				pr1=pr1.replaceAll(",","");
				pr2=pr2.replaceAll(",","");//중간 문자열빼기
				
				Map.getMap().put("priceSearchRange1", pr1);
				Map.getMap().put("priceSearchRange2", pr2);
				
				System.out.println(" 가격1 : " +pr1+ " 가격2 : " + pr2);
			//가격검색끝
			
			//소분류 검색
			try {
				String[] sub_category=(String[])Map.getMap().get("sub_category");
				if(sub_category!=null){
					for(int i=0;i<sub_category.length;i++){
					System.out.println("서브 카테고리 :" +sub_category[i]);
					}
					Map.getMap().put("sub_categoryCheck","ON2");
					Map.getMap().put("sub_category",sub_category);
				}
			}catch (Exception e) {
				String sub_category=(String)Map.getMap().get("sub_category");
				if(sub_category!=null){
					System.out.println("서브 카테고리 :" +sub_category);
					Map.getMap().put("sub_categoryCheck","ON1");
					Map.getMap().put("sub_category",sub_category);
				}
				
			}
			//소분류검색끝
			
			//세일상품만 검색
			String sale=(String)Map.getMap().get("sale");
			if(sale!=null){
				System.out.println("세일 여부 : " +sale);
				if(sale.equals("on"))
				{
					Map.getMap().put("sale",sale);
				}
					
			}
			//세일상품 끝
			
			//정렬 구분 시작
			String sortCheck=(String)Map.getMap().get("sortCheck");
			if(sortCheck!=null){
				Map.getMap().put("sortCheck",sortCheck);
				mv.addObject("sort",sortCheck);
				//밑은 테스트용도 코드
				switch (sortCheck) {
				case "1": //인기순
					System.out.println("검색내 인기순");
					break;
				case "2": //신상품
					System.out.println("검색내 신상순");
					break;
				case "3": //낮은가격
					System.out.println("검색내 낮은가격순");
					break;
				case "4": //높은가격
					System.out.println("검색내 높은가격순");
					break;
				case "5": //할인률
					System.out.println("검색내 할인률순");
					break;

				default:
					System.out.println("디폴트값");
					break;
				}
			}
			//정렬 구분 끝
			
			//품절상품 제외 
			//구현안함 : 품절상태표시할것이 없음
/*			String running=(String)Map.getMap().get("running");
			
			if(running==null){
					Map.getMap().put("running","off");					
			}*/	
			
			//최종검색
			 List<Map<String,Object>> goodsSearchList = goodsService.goodsCategorySearch(Map.getMap());
			//sale&New 로직 시작
			for(int i=0; i<goodsSearchList.size();i++){ 
				if(goodsSearchList.get(i).get("GOODS_SALEDATE")!=null && goodsSearchList.get(i).get("GOODS_DCPRICE") != null){
					//sale태그 조건
					Date dDay = (Date) goodsSearchList.get(i).get("GOODS_SALEDATE");
					//System.out.println("goods_saledate 는?"+dDay);
					if (dDay.getTime() < d.getTime()) {
						//System.out.println("goods_saledate 안으로 ");
						goodsSearchList.get(i).remove("GOODS_SALEDATE");
						goodsSearchList.get(i).remove("GOODS_DCPRICE");
					}
				}
				//New태그 조건
				Date newDay = (Date) goodsSearchList.get(i).get("GOODS_DATE");
				newCal.setTime(newDay);//Data값 캘린더로 변경
				newCal.add(Calendar.DATE, DATE_DATE);// +2주
				
				newDate=new Date(newCal.getTimeInMillis());
				goodsSearchList.get(i).put("GOODS_NEWDATE", newDate);
				
				//hurry up 태그조건
				//goodsSearchList.get(i).put("AMOUNT", goodsSearchList.get(i).get("AMOUNT"));
			}
			
			//sale&New 로직 끝
			mv.addObject("nowDate",d); //현재시간 보내기
			mv.addObject("goodsList",goodsSearchList);
			//goodsList = goodsService.goodsPriceSearch(Map.getMap());
			
			 System.out.println("굿즈 서치리스트 : " +goodsSearchList.size());
			 mv.setViewName("goodsSort");
		} //서치체크(살림) 끝
		
		return mv;
	}
	
	
	//검색결과이동
	@RequestMapping(value="/searchList")
	public ModelAndView searchList(HttpSession session,HttpServletResponse response, HttpServletRequest request,CommandMap Map) throws Exception {
		String stxt = (String) Map.getMap().get("stxt");
		session.setAttribute("stxt",stxt);
		String isSearch = new String(stxt.getBytes("iso-8859-1"), "utf-8");
		System.out.println("isSearch"+isSearch);
		ModelAndView mv = new ModelAndView("searchList");
		mv.addObject("isSearch",isSearch);
		
		int intpagingNum;//페이징을 위한 변수하나선언
		String pagingNum=(String)Map.getMap().get("pagingNum");
		if(pagingNum != null)
		{
			System.out.println("pagingNum??"+pagingNum);
			intpagingNum = Integer.parseInt(pagingNum);
			//intpagingNum = intpagingNum +12;
			System.out.println("intpagingNum??"+intpagingNum);
			mv.setViewName("searchListPlus");
		}
		else
		{
			pagingNum="12";
			intpagingNum =Integer.parseInt(pagingNum);
			
		}
		mv.addObject("pagingNum",intpagingNum);
		String searchCheck=(String)Map.getMap().get("searchCheck");
		if(searchCheck!=null) //더보기를 눌렀는지 확인할것
		{
			mv.setViewName("searchListPlus");
		}
				
		List<Map<String,Object>> goodsList=goodsService.goodsSearch(isSearch);
		
		//sale&New 로직 시작
		Calendar today = Calendar.getInstance();
		Date d = new Date(today.getTimeInMillis());
		
		//new태그위해 선언
		 Calendar newCal = Calendar.getInstance();
		 Date newDate =new Date();
		
		for(int i=0; i<goodsList.size();i++){
			if(goodsList.get(i).get("GOODS_SALEDATE")!=null && goodsList.get(i).get("GOODS_DCPRICE") != null){
				//sale태그 조건
				Date dDay = (Date) goodsList.get(i).get("GOODS_SALEDATE");
				if (dDay.getTime() < d.getTime()) {
					goodsList.get(i).remove("GOODS_SALEDATE");
					goodsList.get(i).remove("GOODS_DCPRICE");
				}
			}
			
			//New태그 조건
			Date newDay = (Date) goodsList.get(i).get("GOODS_DATE");
			//System.out.println("newDay는 : "+newDay);
			newCal.setTime(newDay);//Data값 캘린더로 변경
			newCal.add(Calendar.DATE, DATE_DATE);// +2주
			
			newDate=new Date(newCal.getTimeInMillis());
			//System.out.println("2주후 newDate는 : "+newDate);
			goodsList.get(i).put("GOODS_NEWDATE", newDate);
			
			//hurry up 태그조건
			//goodsList.get(i).put("AMOUNT", goodsList.get(i).get("AMOUNT"));
		}
		mv.addObject("nowDate",d); //현재시간 보내기
		//sale&New 로직 끝
		
		System.out.println("검색한 상품수 : "+goodsList.size());
		mv.addObject("goodsList", goodsList);
	
		
		return mv;
	}
	
	//세일 카테고리 
	@RequestMapping(value="/goods/goodsSaleCategory")
	public ModelAndView goodsSaleCategory(HttpServletResponse response, HttpServletRequest request,CommandMap Map) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("goodsSaleCategory");
		
		//서치체크
		String searchCheck=(String)Map.getMap().get("searchCheck");

				
		
	
		//정렬 로직 시작
		String sort=(String)Map.getMap().get("sort");		
		if(sort!=null){
			System.out.println("솔트값은? " + sort);
			mv.setViewName("goodsSort");
			mv.addObject("sort",sort);
		}
		else{
			sort ="1"; //기본 인기순에 오게
			mv.addObject("sort",sort);
		}
		Map.getMap().put("sort",sort);
		//정렬 로직 끝
		
		
		if(searchCheck!=null)
		{

		//세일 구분 로직 시작
		try { //세일을 하나만 체크하면 String값으로 받기때문에 try catch
			String[] sale=(String[])Map.getMap().get("sale");
			
			if(sale!=null)
			{
				//1이면 30%이하
				//2이면 31%~50%
				//3이면 51~80%
				int saleNum=0;
				for(int i =0;i<sale.length;i++){
				System.out.println("다중세일 선택" + sale[i]);
				if(sale[i].equals("1"))
				{
					saleNum=saleNum+1;
				}
				if(sale[i].equals("2"))
				{
					saleNum=saleNum+20;
				}
				if(sale[i].equals("3"))
				{
					saleNum=saleNum+300;
				}
				}
				System.out.println("세일넘버"+saleNum);
				//12일땐 21
				//23일땐 320
				//13일땐 301
				//123일떈 321
				Map.getMap().put("saleCheck","ON2");
				Map.getMap().put("sale",saleNum);
			}
		}catch (Exception e) {
			String sale=(String)Map.getMap().get("sale");
			
			if(sale!=null)
			{
				System.out.println("원세일 선택" + sale);	
				mv.setViewName("goodsSort");
				Map.getMap().put("saleCheck","ON1");
				Map.getMap().put("sale",sale);
				System.out.println("sale값"+sale);
			}
		}//세일 구분 로직 끝
		
		
		mv.setViewName("goodsSort");
	}//서치체크 끝
		
		//정렬 구분 시작
		String sortCheck=(String)Map.getMap().get("sortCheck");
		if(sortCheck!=null){
			Map.getMap().put("sort",sortCheck);
			mv.addObject("sort",sortCheck);
			//밑은 테스트용도 코드
			switch (sortCheck) {
			case "1": //인기순
				System.out.println("검색내 인기순");
				break;
			case "2": //신상품
				System.out.println("검색내 신상순");
				break;
			case "3": //낮은가격
				System.out.println("검색내 낮은가격순");
				break;
			case "4": //높은가격
				System.out.println("검색내 높은가격순");
				break;
			case "5": //할인률
				System.out.println("검색내 할인률순");
				break;

			default:
				System.out.println("디폴트값");
				break;
			}
		}
		//정렬 구분 끝
		
		List<Map<String,Object>> goodsList=goodsService.goodsSale(Map.getMap());
		//<!--기본 인기순 셀렉트 --> A.goods_DCPRICE is not null
		List<Map<String,Object>> goodsSaleList=new ArrayList<Map<String,Object>>();
		//걸러 담을 리스트 선언
		
		//sale&New 로직 시작
		Calendar today = Calendar.getInstance();
		Date d = new Date(today.getTimeInMillis());
				
		//new태그위해 선언
		Calendar newCal = Calendar.getInstance();
		Date newDate =new Date();
				
		for(int i=0; i<goodsList.size();i++){
			
			//New태그 조건
			Date newDay = (Date) goodsList.get(i).get("GOODS_DATE");
			//System.out.println("newDay는 : "+newDay);
			newCal.setTime(newDay);//Data값 캘린더로 변경
			newCal.add(Calendar.DATE, DATE_DATE);// +2주
					
			newDate=new Date(newCal.getTimeInMillis());
			//System.out.println("2주후 newDate는 : "+newDate);
			goodsList.get(i).put("GOODS_NEWDATE", newDate); //얘때매 위로올림
			
			
			if(goodsList.get(i).get("GOODS_SALEDATE")!=null && goodsList.get(i).get("GOODS_DCPRICE") != null){
				//sale태그 조건
				Date dDay = (Date) goodsList.get(i).get("GOODS_SALEDATE");
				if (!(dDay.getTime() < d.getTime())) {
					//반대
					//여기 리스트 복사부터 하기
					goodsSaleList.add(goodsList.get(i));
					//goodsList.get(i).remove("GOODS_SALEDATE");
					//goodsList.get(i).remove("GOODS_DCPRICE");
				}
			}
			
			//hurry up 태그조건
			//goodsList.get(i).put("AMOUNT", goodsList.get(i).get("AMOUNT"));
		}
		mv.addObject("nowDate",d); //현재시간 보내기
		//sale&New 로직 끝				
		
		
		System.out.println("언구형");
		//mv.addObject("goodsList",goodsList);
		mv.addObject("goodsList",goodsSaleList);
		
		//mv.setViewName("goodsSaleCategory");
		return mv;
	}
	
		//New 카테고리 
		@RequestMapping(value="/goods/goodsNewCategory")
		public ModelAndView goodsNewCategory(HttpServletResponse response, HttpServletRequest request,CommandMap Map) throws Exception{
			ModelAndView mv = new ModelAndView();
			mv.setViewName("goodsNewCategory");
			
			//Map.getMap().put("date",DATE_DATE); //뉴태그 
			
			
			String searchCheck=(String)Map.getMap().get("searchCheck");//서치됬는지 확인
			Map.getMap().put("priceSearchRange1", 7000);
			Map.getMap().put("priceSearchRange2", 298000);
			Map.getMap().put("date",30);
			//가격 기본값 포함해서 검색해야하기떄문에 넣어줘야한다.
			if(searchCheck!=null){
				System.out.println("검색조건사용");
				//가격 검색
				String[] priceRange=(String[])Map.getMap().get("priceRange");
			//	if(priceRange!=null) 검색을하면 null일수가 없어서 뺐다
					String pr1=priceRange[0];
					String pr2=priceRange[1];
					
					pr1=pr1.replaceAll(",","");
					pr2=pr2.replaceAll(",","");//중간 문자열빼기
					
					Map.getMap().put("priceSearchRange1", pr1);
					Map.getMap().put("priceSearchRange2", pr2);
					
					System.out.println(" 가격1 : " +pr1+ " 가격2 : " + pr2);
				//가격검색끝

			
			//컬러검색 시작
			try { //컬러를 하나만 체크하면 String값으로 받기때문에 try catch
				String[] color=(String[])Map.getMap().get("myColor");
				
				if(color!=null)
				{
					for(int i =0;i<color.length;i++){
					System.out.println("다중컬러 선택" + color[i]);
					}
					Map.getMap().put("colorCheck","ON2");
					Map.getMap().put("color",color);
				}
			}catch (Exception e) {
				String color=(String)Map.getMap().get("myColor");
				
				if(color!=null)
				{
					System.out.println("원컬러 선택" + color);	
					Map.getMap().put("colorCheck","ON1");
					Map.getMap().put("color",color);
				}
				
			}
			//컬러검색끝
			
			//기간 검색 시작
			String period=(String)Map.getMap().get("period");
			System.out.println("period 값"+period);
			Map.getMap().put("date", period);
			//기간 검색 끝
				
			mv.setViewName("goods/goodsNewSort");
			}//서치체크끝
			
			List<Map<String,Object>> goodsList=goodsService.goodsNew(Map.getMap());

			//sale&New 로직 시작
			
			Calendar today = Calendar.getInstance();
			Date d = new Date(today.getTimeInMillis());
			
			//new태그위해 선언
			 Calendar newCal = Calendar.getInstance();
			 Date newDate =new Date();
			    

			for(int i=0; i<goodsList.size();i++){
				if(goodsList.get(i).get("GOODS_SALEDATE")!=null && goodsList.get(i).get("GOODS_DCPRICE") != null){
					//sale태그 조건
					Date dDay = (Date) goodsList.get(i).get("GOODS_SALEDATE");
					if (dDay.getTime() < d.getTime()) {
						goodsList.get(i).remove("GOODS_SALEDATE");
						goodsList.get(i).remove("GOODS_DCPRICE");
					}
				}
				
				//New태그 조건
				Date newDay = (Date) goodsList.get(i).get("GOODS_DATE");
				newCal.setTime(newDay);//Data값 캘린더로 변경
				newCal.add(Calendar.DATE, DATE_DATE);// +10
				
				newDate=new Date(newCal.getTimeInMillis());
				goodsList.get(i).put("GOODS_NEWDATE", newDate);
				
				//hurry up 태그조건
				
			}
			mv.addObject("nowDate",d); //현재시간 보내기
			mv.addObject("goodsList",goodsList);
			//new&sale로직끝
			
			
			return mv;
		}

	
	@RequestMapping(value = "/goodsDetail")
	public ModelAndView goodsDetail(CommandMap commandMap, HttpServletResponse response, HttpServletRequest request, HttpSession session) throws Exception {

		ModelAndView mv = new ModelAndView("goodsDetail");

		// 조회수 올리기
		goodsService.goodsCountUp(commandMap.getMap());

		// 상품정보 가져오기
		List<Map<String, Object>> goodsDetail = goodsService.goodsDetail(commandMap.getMap());

		Calendar today=Calendar.getInstance();
		Date d=new Date(today.getTimeInMillis());
	
		Map<String, Object> goodsBasic = goodsDetail.get(0);
		session.setAttribute("GOODS_NUMBER", goodsBasic.get("GOODS_NUMBER"));
		if (goodsBasic.get("GOODS_SALEDATE") != null && goodsBasic.get("GOODS_DCPRICE") != null) {
			Date dDay = (Date) goodsBasic.get("GOODS_SALEDATE");
			if ( dDay.getTime() < d.getTime()) {
				goodsBasic.remove("GOODS_SALEDATE");
				goodsBasic.remove("GOODS_DCPRICE");
			}
		}
		
		mv.addObject("goodsDetail", goodsDetail);
		mv.addObject("GOODS_NUMBER",goodsDetail.get(0).get("GOODS_NUMBER"));
		mv.addObject("goodsBasic", goodsBasic);
		
		int totalSellCount = goodsService.countTotalSell(commandMap.getMap());

		mv.addObject("totalSellCount", totalSellCount);

		List<Map<String, Object>> goodsImage = goodsService.goodsImage(commandMap.getMap());
		mv.addObject("goodsImage", goodsImage);

		// 코디상품 정보 가져오기
		List<Map<String, Object>> relatedGoods = goodsService.relatedGoods(goodsBasic);
		mv.addObject("relatedGoods", relatedGoods);
		// 리뷰 평점 가져오기
		mv.addObject("avgGrade",goodsService.goodsAvgGrade(commandMap.getMap()));
		
		// 구매후기 가져오기

		
		// 상품qna 가져오기
		// QNA 서비스가 있는주 모르고 그냥 goods서비스에 해버림
		System.out.println("goods_number은?"+goodsDetail.get(0).get("GOODS_NUMBER"));
		commandMap.put("GOODS_NUMBER", commandMap.getMap().get("GOODS_NUMBER"));
		//String goods_number=String.valueOf(commandMap.getMap().get("GOODS_NUMBER"));
		//System.out.println("넘버값은?"+number);
		List<Map<String, Object>> goodsQna=goodsService.goodsQna(commandMap.getMap());
		
		System.out.println("goodsQna.size() ="+goodsQna.size());
		//List<Map<String,Object>> goodsQnaUser=new ArrayList<Map<String,Object>>();
		//List<Map<String,Object>> goodsQnaAdmin=new ArrayList<Map<String,Object>>();
		//나눠남는다 유저랑 어드민 비교해서(로직바껴서 필요없음)
		//for(int i=0;i<goodsQna.size();i++)
		//{
			////System.out.println("몰로변환해야됨 ㅡㅡ?"+goodsQna.get(i).get("MEMBER_NUMBER"));
			////String j = String.valueOf(goodsQna.get(i).get("MEMBER_NUMBER"));
			
			////String j =(String)(goodsQna.get(i).get("MEMBER_NUMBER"));
			//if((goodsQna.get(i).get("MEMBER_ID")).equals("admin"))
			//{
			//	System.out.println("여기어드민있다");
			//	goodsQnaAdmin.add(goodsQna.get(i));
			//	
		//	}
		//	else{
		//		goodsQnaUser.add(goodsQna.get(i));
		//	}
				
		//}
		//System.out.println("QNA admin 사이즈 : "+goodsQnaAdmin.size()+"\nQNA USER사이즈 : "+ goodsQnaUser.size());
		//mv.addObject("goodsQnaUser",goodsQnaUser);
		//mv.addObject("goodsQnaAdmin",goodsQnaAdmin);
		mv.addObject("goodsQna",goodsQna);
		
		//Qna페이징 하기
		int qnaEndPagingNum=pagingSet;
		int qnaStartPagingNum=0;
		int qnaNowPage=1;
		
		String pagingQnaOnOff=(String)commandMap.getMap().get("pagingQnaOnOff");
		if(pagingQnaOnOff!=null)
		{
			String i=(String)commandMap.getMap().get("i");
			qnaEndPagingNum=Integer.parseInt((String)commandMap.getMap().get("qnaEndPagingNum"));
			//String qnaStartPagingNumCheck=((String)commandMap.getMap().get("qnaStartPagingNum"));
			//if(qnaStartPagingNumCheck!=null)
			//{
			qnaStartPagingNum=Integer.parseInt((String)commandMap.getMap().get("qnaStartPagingNum"));
			//}
			//System.out.println("페이징 넘1 :" + qnaStartPagingNum);
			//System.out.println("페이징 넘 :" + qnaEndPagingNum);
			qnaNowPage=Integer.parseInt((String)commandMap.getMap().get("qnaNowPage"));
			if(i.equals("1"))//prev 클릭
			{
				if(qnaEndPagingNum==pagingSet)
				{
					System.out.println("첫페이지");
				}
				else{
					qnaStartPagingNum=qnaStartPagingNum-pagingSet;
					qnaEndPagingNum=qnaEndPagingNum-pagingSet; 
					qnaNowPage = qnaNowPage-1;
					System.out.println("전페이지이동");
				}
			}
			else if(i.equals("2")) //next 클릭
			{
				if(qnaEndPagingNum<goodsQna.size())
				{
					qnaStartPagingNum=qnaStartPagingNum+pagingSet;
					qnaEndPagingNum=qnaEndPagingNum+pagingSet;
					qnaNowPage= qnaNowPage+1;
					System.out.println("다음페이지이동");
				}
				else
				{
					System.out.println("마지막페이지");
				}
				
			}
			System.out.println("페이징 넘연산결과 " + qnaEndPagingNum);
			mv.setViewName("goods/qna/goodsDetail_Qna");
		}
		mv.addObject("qnaEndPagingNum",qnaEndPagingNum);
		mv.addObject("qnaStartPagingNum",qnaStartPagingNum);
		mv.addObject("qnaNowPage",qnaNowPage);
		
		
		
		//상품 Review 가져오기
		List<Map<String, Object>> goodsReview=reviewService.goodsReview(commandMap.getMap());
		
		mv.addObject("goodsReview",goodsReview);

/*		재훈씨 원본
 * 		reviewTotalCount = goodsReview.size();
		reviewPage = new Paging(reviewCurrentPage, reviewTotalCount, blockCount, blockPage, "goodsDetail");
		reviewPagingHtml = reviewPage.getPagingHtml().toString();

		int lastCount = reviewTotalCount;

		if (reviewPage.getEndCount() < reviewTotalCount)
			lastCount = reviewPage.getEndCount() + 1;

		goodsReview = goodsReview.subList(reviewPage.getStartCount(), lastCount);
		mv.addObject("goodsReview",goodsReview);		
*/
		
		//Review 페이징하기

		int reviewEndPagingNum=pagingSet;
		int reviewStartPagingNum=0;
		int reviewNowPage=1;
		
		String pagingReviewOnOff=(String)commandMap.getMap().get("pagingReviewOnOff");
		if(pagingReviewOnOff!=null)
		{
			String i=(String)commandMap.getMap().get("i");
			reviewEndPagingNum=Integer.parseInt((String)commandMap.getMap().get("reviewEndPagingNum"));
			//String qnaStartPagingNumCheck=((String)commandMap.getMap().get("qnaStartPagingNum"));
			//if(qnaStartPagingNumCheck!=null)
			//{
			reviewStartPagingNum=Integer.parseInt((String)commandMap.getMap().get("reviewStartPagingNum"));
			//}
			//System.out.println("페이징 넘1 :" + qnaStartPagingNum);
			//System.out.println("페이징 넘 :" + qnaEndPagingNum);
			reviewNowPage=Integer.parseInt((String)commandMap.getMap().get("reviewNowPage"));
			if(i.equals("1"))//prev 클릭
			{
				if(reviewEndPagingNum==pagingSet)
				{
					System.out.println("첫페이지");
				}
				else{
					reviewStartPagingNum = reviewStartPagingNum-pagingSet;
					reviewEndPagingNum = reviewEndPagingNum-pagingSet; 
					reviewNowPage = reviewNowPage-1;
					System.out.println("리뷰전페이지이동");
				}
			}
			else if(i.equals("2")) //next 클릭
			{
				if(reviewEndPagingNum<goodsReview.size())
				{
					reviewStartPagingNum=reviewStartPagingNum+pagingSet;
					reviewEndPagingNum=reviewEndPagingNum+pagingSet;
					reviewNowPage= reviewNowPage+1;
					System.out.println("리뷰다음페이지이동");
				}
				else
				{
					System.out.println("마지막페이지");
				}
				
			}
			System.out.println("페이징 넘연산결과 " + reviewEndPagingNum);
			mv.setViewName("goods/review/goodsDetail_Review");
		}
		mv.addObject("reviewEndPagingNum",reviewEndPagingNum);
		mv.addObject("reviewStartPagingNum",reviewStartPagingNum);
		mv.addObject("reviewNowPage",reviewNowPage);
		
		
		return mv;
	}
}
