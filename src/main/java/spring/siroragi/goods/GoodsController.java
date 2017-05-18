package spring.siroragi.goods;

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
	
	@Resource(name="goodsService")
	private GoodsService goodsService;

	//페이지이동
	@RequestMapping(value="/goods/goodsCategory")
	public String goodsCategory() {
		return "goodsCategory";
	}
	
	@RequestMapping(value="goodsDetail")
	public ModelAndView goodsDetail(CommandMap commandMap, HttpServletRequest request) throws Exception{
		
		ModelAndView mv=new ModelAndView("goodsDetail");
		
		List<Map<String, Object>> goodsDetail= goodsService.goodsDetail(commandMap.getMap());
		//조회수 올리기도 추가해야해
		Map<String,Object> goodsBasic=goodsDetail.get(0);
		
		mv.addObject("goodsDetail",goodsDetail);
		mv.addObject("goodsBasic",goodsBasic);
		
		int totalSellCount=goodsService.countTotalSell(commandMap.getMap());
		
		mv.addObject("totalSellCount", totalSellCount);
		
		List<Map<String, Object>> goodsImage=goodsService.goodsImage(commandMap.getMap());
		mv.addObject("goodsImage", goodsImage);
		
		return mv;
	}
}
