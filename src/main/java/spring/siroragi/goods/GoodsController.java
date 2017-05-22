package spring.siroragi.goods;

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

@Controller
public class GoodsController {
	
	@Resource(name="goodsService")
	private GoodsService goodsService;

	//페이지이동
	@RequestMapping(value="/goods/goodsCategory")
	public String goodsCategory() {
		return "goodsCategory";
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
	
}
