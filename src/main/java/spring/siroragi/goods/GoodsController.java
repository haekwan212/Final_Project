package spring.siroragi.goods;

import java.text.SimpleDateFormat;
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

@Controller
public class GoodsController {

	@Resource(name = "goodsService")
	private GoodsService goodsService;

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
		mv.addObject("goodsBasic", goodsBasic);

		int totalSellCount = goodsService.countTotalSell(commandMap.getMap());

		mv.addObject("totalSellCount", totalSellCount);

		List<Map<String, Object>> goodsImage = goodsService.goodsImage(commandMap.getMap());
		mv.addObject("goodsImage", goodsImage);

		// 코디상품 정보 가져오기
		List<Map<String, Object>> relatedGoods = goodsService.relatedGoods(goodsBasic);
		mv.addObject("relatedGoods", relatedGoods);

		// 리뷰 별점 가져오기

		// 구매후기 가져오기

		// 상품qna 가져오기

		return mv;
	}
}
