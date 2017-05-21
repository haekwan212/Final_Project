package spring.siroragi.myPage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyPageController {

	@RequestMapping(value="/mypage")
	public ModelAndView mypageForm(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mypage");
		return mv;
	}
	
	@RequestMapping(value="/orderlist")
	@ResponseBody
	public ModelAndView getAjaxTabContent1(){
		ModelAndView mv = new ModelAndView("orderlist");
		return mv;
	}
}
