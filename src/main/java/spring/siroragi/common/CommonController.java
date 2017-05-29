package spring.siroragi.common;

import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import spring.kh.siroragi.CommandMap;
import spring.siroragi.goods.GoodsService;

@Controller
public class CommonController {

	@Resource(name = "goodsService")
	private GoodsService goodsService;

	@Resource(name = "commonService")
	private CommonService commonService;

	// 실험용
	@RequestMapping(value = "/main")
	public ModelAndView list(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView();
		commonService.goodsSale(commandMap.getMap());
		// Top
		List<Map<String, Object>> listByTop = commonService.listByTop(commandMap.getMap());
		// Outer
		List<Map<String, Object>> listByOut = commonService.listByOut(commandMap.getMap());
		// pants
		List<Map<String, Object>> listByPan = commonService.listByPan(commandMap.getMap());
		//ACC
		List<Map<String, Object>> listByAcc = commonService.listByAcc(commandMap.getMap());
		//SHOES
		List<Map<String, Object>> listByShoes = commonService.listByShoes(commandMap.getMap());

		mv.addObject("listByTop", listByTop);
		mv.addObject("listByOut", listByOut);
		mv.addObject("listByPan", listByPan);
		mv.addObject("listByAcc", listByAcc);
		mv.addObject("listByShoes", listByShoes);
		for (int i = 0; i < listByTop.size(); i++) {
			System.out.println(listByTop.get(i).toString());
		}
		mv.setViewName("common");
		return mv;
	}

	@RequestMapping(value = "/main/search_store")
	public ModelAndView searchForm() {
		ModelAndView mv = new ModelAndView("searchForm");
		return mv;
	}

	@RequestMapping(value = "/main/goods")
	public ModelAndView goods(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("goods");
		
		// 조회수 올리기
		goodsService.goodsCountUp(commandMap.getMap());

		// 상품정보 가져오기
		List<Map<String, Object>> goodsDetail = goodsService.goodsDetail(commandMap.getMap());

		Calendar today = Calendar.getInstance();
		Date d = new Date(today.getTimeInMillis());

		Map<String, Object> goodsBasic = goodsDetail.get(0);

		if (goodsBasic.get("GOODS_SALEDATE") != null && goodsBasic.get("GOODS_DCPRICE") != null) {
			Date dDay = (Date) goodsBasic.get("GOODS_SALEDATE");
			if (dDay.getTime() < d.getTime()) {
				goodsBasic.remove("GOODS_SALEDATE");
				goodsBasic.remove("GOODS_DCPRICE");
			}
		}

		mv.addObject("goodsDetail", goodsDetail);
		mv.addObject("GOODS_NUMBER", goodsDetail.get(0).get("GOODS_NUMBER"));
		mv.addObject("goodsBasic", goodsBasic);

		int totalSellCount = goodsService.countTotalSell(commandMap.getMap());

		mv.addObject("totalSellCount", totalSellCount);

		List<Map<String, Object>> goodsImage = goodsService.goodsImage(commandMap.getMap());
		mv.addObject("goodsImage", goodsImage);

		// 코디상품 정보 가져오기
		List<Map<String, Object>> relatedGoods = goodsService.relatedGoods(goodsBasic);
		mv.addObject("relatedGoods", relatedGoods);
		// 리뷰 평점 가져오기
		mv.addObject("avgGrade", goodsService.goodsAvgGrade(commandMap.getMap()));

		return mv;
	}

	@RequestMapping(value = "/about")
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("about");
		return mv;
	}

}
