package spring.siroragi.goods;

import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

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
	
	
	

	// 페이지이동
	@RequestMapping(value = "/goods/goodsCategory")
	public String goodsCategory() {
		return "goodsCategory";
	}

	@RequestMapping(value = "goodsDetail")
	public ModelAndView goodsDetail(CommandMap commandMap, HttpServletRequest request) throws Exception {

		ModelAndView mv = new ModelAndView("goodsDetail");

		// 조회수 올리기
		goodsService.goodsCountUp(commandMap.getMap());

		// 상품정보 가져오기
		List<Map<String, Object>> goodsDetail = goodsService.goodsDetail(commandMap.getMap());

		Calendar today=Calendar.getInstance();
		Date d=new Date(today.getTimeInMillis());
	
		Map<String, Object> goodsBasic = goodsDetail.get(0);

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
