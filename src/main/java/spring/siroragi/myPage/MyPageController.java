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
		mv.setViewName("redirect:orderlist");
		return mv;
	}
	
	@RequestMapping(value="/orderlist")
	@ResponseBody
	public ModelAndView orderlist(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mypage");
		return mv;
	}
	
	@RequestMapping(value="/exchangelist")
	public ModelAndView exchangelist(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("exchangelist");
		return mv;
	}
	
	@RequestMapping(value="/returnlist")
	public ModelAndView returnlist(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("returnlist");
		return mv;
	}
	
	@RequestMapping(value="/review")
	public ModelAndView review(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("review");
		return mv;
	}
}
