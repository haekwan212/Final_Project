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
	

	//페이지이동
	@RequestMapping(value="/goods/goodsCategory")
	public ModelAndView goodsCategory(HttpServletResponse response, HttpServletRequest request,CommandMap Map) throws Exception{
		
		ModelAndView mv = new ModelAndView("goodsCategory");
		
		String isCategory=(String)Map.getMap().get("category");
		System.out.println("카테고리 는 "+isCategory);

		String searchCheck=(String)Map.getMap().get("searchCheck");
		Map.getMap().put("colorCheck",null);
		/*String[] array = priceRange1.split(",");*/
	
		/*"priceRange"*/
	/*	String pr1=(String)Map.getMap().get("priceRange1");
		String pr2=(String)Map.getMap().get("priceRange2");
		*/
		
		
		List<String> goodsClass = new ArrayList<>();
		List<Map<String,Object>> goodsRank = null;
		List<Map<String,Object>> goodsList = null;
		if(isCategory.equals("OUTER")){
			goodsClass.add("가디건");
			goodsClass.add("자켓");
			goodsClass.add("점퍼&패딩");
			goodsClass.add("코트");
			goodsClass.add("블레이저");
			
			System.out.println("서치체크:"+searchCheck);
/*			if(searchCheck==null){
				goodsList=goodsService.goodsCategory(isCategory);
			}*/
			
			goodsList=goodsService.goodsCategory(isCategory);
			goodsRank=goodsService.goodsRank(isCategory);
			

		}
		else if(isCategory.equals("TOP")){
			goodsClass.add("티셔츠");
			goodsClass.add("셔츠");
			goodsClass.add("니트&스웨터");
			goodsClass.add("조끼");
			
			goodsList=goodsService.goodsCategory(isCategory);
			goodsRank=goodsService.goodsRank(isCategory);
		}
		else if(isCategory.equals("PANTS")){
			goodsClass.add("면바지");
			goodsClass.add("청바지");
			goodsClass.add("슬랙스");
			goodsClass.add("반바지");
			
			goodsList=goodsService.goodsCategory(isCategory);
			goodsRank=goodsService.goodsRank(isCategory);
		}
		else if(isCategory.equals("SHOES")){
			goodsClass.add("구두");
			goodsClass.add("스니커즈");
			
			goodsList=goodsService.goodsCategory(isCategory);
			goodsRank=goodsService.goodsRank(isCategory);
		}
		else if(isCategory.equals("ACC")){
			goodsClass.add("가방");
			goodsClass.add("벨트");
			goodsClass.add("ETC");
			
			goodsList=goodsService.goodsCategory(isCategory);
			goodsRank=goodsService.goodsRank(isCategory);
		}
		
		System.out.println("굿즈 클래스 : " +goodsClass.size());
		//System.out.println("굿즈 리스트 : " +goodsList.size());
		System.out.println("굿즈 랭크 : " +goodsRank.size());
		
		mv.addObject("goodsList",goodsList);
		mv.addObject("isCategory",isCategory);	
		mv.addObject("goodsRank",goodsRank);
		mv.addObject("goodsClass",goodsClass);
		

		if(searchCheck!=null){
			//컬러검색
			try {
				String[] color=(String[])Map.getMap().get("color[]");
				

				if(color!=null){
					for(int i=0;i<color.length;i++){
						Map.getMap().put("colorCheck","ON2");
						Map.getMap().put("color",color);
						System.out.println("호우:" +color[i]);
					}
				}
			} catch (Exception e) {
				String color=(String)Map.getMap().get("color[]");
				

				if(color!=null){
					System.out.println("호우1:" +color);
					Map.getMap().put("colorCheck","ON1");
					Map.getMap().put("color",color);
				}
			}
			
			//가격 검색
			String[] priceRange=(String[])Map.getMap().get("priceRange[]");
			String pr1=priceRange[0];
			String pr2=priceRange[1];
			
			pr1=pr1.replaceAll(",","");
			pr2=pr2.replaceAll(",","");//중간 문자열빼기
			
			Map.getMap().put("priceSearchRange1", pr1);
			Map.getMap().put("priceSearchRange2", pr2);
			
			System.out.println("pr1 pr2 : " + pr1 +" "+ pr2);
			
			
			//소분류 검색
			try {
				String[] sub_category=(String[])Map.getMap().get("sub_category[]");
				if(sub_category!=null){
					for(int i=0;i<sub_category.length;i++){
					System.out.println("서브 카테고리 :" +sub_category[i]);
					Map.getMap().put("sub_categoryCheck","ON2");
					Map.getMap().put("sub_category",sub_category);
					}
				}
			}catch (Exception e) {
				String sub_category=(String)Map.getMap().get("sub_category[]");
				if(sub_category!=null){
					System.out.println("서브 카테고리 :" +sub_category);
					Map.getMap().put("sub_categoryCheck","ON1");
					Map.getMap().put("sub_category",sub_category);
				}
			}
			
			//세일상품만 검색
			String sale=(String)Map.getMap().get("sale");
			if(sale!=null){
				System.out.println("세일 여부 : " +sale);
				if(sale.equals("on"))
				{
					Map.getMap().put("sale",sale);
				}
					
			}
			
			//품절상품 제외 
			//구현안함 : 품절상태표시할것이 없음
/*			String running=(String)Map.getMap().get("running");
			
			if(running==null){
					Map.getMap().put("running","off");					
			}*/
			
			
		
			
			//최종검색
			List<Map<String,Object>> goodsSearchList = goodsService.goodsCategorySearch(Map.getMap());
			mv.addObject("goodsList",goodsSearchList);
			//goodsList = goodsService.goodsPriceSearch(Map.getMap());
			
			System.out.println("굿즈 서치리스트 : " +goodsSearchList.size());
			//System.out.println("ii1은뭐냐!"+priceRange[0]+"di"+priceRange[1]);
		}
		



		return mv;
	}
	
	
	//검색결과이동
	@RequestMapping(value="/searchList")
	public ModelAndView searchList(HttpSession session,HttpServletResponse response, HttpServletRequest request,CommandMap Map) throws Exception {
		String stxt = (String) Map.getMap().get("stxt");
		session.setAttribute("stxt",stxt);
		String isSearch=stxt;
		
		ModelAndView mv = new ModelAndView("searchList");
				
		List<Map<String,Object>> goodsList=goodsService.goodsSearch(isSearch);
		System.out.println("거침"+goodsList.size());
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
