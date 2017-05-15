package spring.siroragi.common;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class CommonController {

	//실험용
	@RequestMapping(value="/main")
	public ModelAndView list() {
		ModelAndView mv = new ModelAndView();
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
