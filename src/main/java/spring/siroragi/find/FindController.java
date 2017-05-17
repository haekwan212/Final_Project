package spring.siroragi.find;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FindController {

	@RequestMapping(value="/login/findForm")
	public ModelAndView findForm(){
		ModelAndView mv = new ModelAndView("modal_findForm");
		return mv;
	}
}
