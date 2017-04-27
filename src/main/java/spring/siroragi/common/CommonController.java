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
	@RequestMapping(value="/hello/")
	public ModelAndView list() {
		ModelAndView mv = new ModelAndView("home");

    	return mv;
	}
}
