package spring.siroragi.common;


import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import spring.kh.siroragi.CommandMap;


@Controller
public class CommonController {

	@Resource(name = "commonService")
	private CommonService commonService;
	//실험용
	@RequestMapping(value="/main")
	public ModelAndView list(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView();
		//Top
		List<Map<String, Object>> listByTop = commonService.listByTop(commandMap.getMap());
		//Outer
		List<Map<String, Object>> listByOut = commonService.listByOut(commandMap.getMap());
		//pants
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
	for(int i = 0; i< listByTop.size(); i++){
		System.out.println(listByTop.get(i).toString());
		}
		mv.setViewName("common");
    	return mv;
	}
	
	@RequestMapping(value="/main/search_store")
	public ModelAndView searchForm(){
		ModelAndView mv = new ModelAndView("searchForm");
		return mv;
	}
	
	@RequestMapping(value="/main/goods")
	public ModelAndView goods(){
		ModelAndView mv = new ModelAndView("goods");
		return mv;
	}
	
	@RequestMapping(value="/about")
	public ModelAndView about(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("about");
		return mv;
	}

}
