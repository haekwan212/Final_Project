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
	
	
	// 페이징 변수(리뷰)
		private int reviewCurrentPage = 1;
		private int reviewTotalCount;
		
		private int blockCount = 5;
		private int blockPage = 5;
		
		private String reviewPagingHtml;
		private Paging reviewPage;
		
	// 페이징 변수(Qna)
		private int qnaCurrentPage = 1;
		private int qnaTotalCount;
		
		private String qnaPagingHtml;
		private Paging qnaPage;
	

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
			newCal.add(Calendar.DATE, 10);// +2주
			
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
			newCal.add(Calendar.DATE, 10);// +2주
			
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
		
			//컬러검색
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
					Date dDay = (Date) goodsSearchList.get(i).get("GOODS_SALEDATE");
					if (dDay.getTime() < d.getTime()) {
						goodsSearchList.get(i).remove("GOODS_SALEDATE");
						goodsSearchList.get(i).remove("GOODS_DCPRICE");
					}
				}
				//New태그 조건
				Date newDay = (Date) goodsSearchList.get(i).get("GOODS_DATE");
				newCal.setTime(newDay);//Data값 캘린더로 변경
				newCal.add(Calendar.DATE, 10);// +2주
				
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
		String isSearch=stxt;//안해줘도되는데 그냥보기좋으라고해준듯 그럼첨부터 isSearch로 선언해도되는데
		
		ModelAndView mv = new ModelAndView("searchList");
				
		List<Map<String,Object>> goodsList=goodsService.goodsSearch(isSearch);
		
		//sale&New 로직 시작
		Calendar today = Calendar.getInstance();
		Date d = new Date(today.getTimeInMillis());
		
		//new태그위해 선언
		 Calendar newCal = Calendar.getInstance();
		 Date newDate =new Date();
		
		for(int i=0; i<goodsList.size();i++){
			if(goodsList.get(i).get("GOODS_SALEDATE")!=null && goodsList.get(i).get("GOODS_DCPRICE") != null){
				Date dDay = (Date) goodsList.get(i).get("GOODS_SALEDATE");
				if (dDay.getTime() < d.getTime()) {
					goodsList.get(i).remove("GOODS_SALEDATE");
					goodsList.get(i).remove("GOODS_DCPRICE");
				}
			}
			
			//New태그 조건
			Date newDay = (Date) goodsList.get(i).get("GOODS_DATE");
			System.out.println("newDay는 : "+newDay);
			newCal.setTime(newDay);//Data값 캘린더로 변경
			newCal.add(Calendar.DATE, 10);// +2주
			
			newDate=new Date(newCal.getTimeInMillis());
			System.out.println("2주후 newDate는 : "+newDate);
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
	
	@RequestMapping(value = "goodsDetail")
	public ModelAndView goodsDetail(CommandMap commandMap, HttpServletRequest request, HttpSession session) throws Exception {

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
		
		//상품 리뷰 가져오기
		List<Map<String, Object>> goodsReview=reviewService.goodsReview(commandMap.getMap());
		
		reviewTotalCount = goodsReview.size();
		reviewPage = new Paging(reviewCurrentPage, reviewTotalCount, blockCount, blockPage, "goodsDetail");
		reviewPagingHtml = reviewPage.getPagingHtml().toString();

		int lastCount = reviewTotalCount;

		if (reviewPage.getEndCount() < reviewTotalCount)
			lastCount = reviewPage.getEndCount() + 1;

		goodsReview = goodsReview.subList(reviewPage.getStartCount(), lastCount);
		mv.addObject("goodsReview",goodsReview);		

		return mv;
	}
}
