package spring.siroragi.join;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class JoinController {

	@RequestMapping(value="/joinStep1")
	public ModelAndView joinStep1(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("joinStep1");
		return mv;
	}
	
	@RequestMapping(value="/joinStep1/modal_email")
	public ModelAndView modal_email(){
		ModelAndView mv = new ModelAndView("modal_email");
		return mv;
	}
	
	@RequestMapping(value="/joinStep2")
	public ModelAndView joinStep2(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("joinStep2");
		return mv;
	}
}
