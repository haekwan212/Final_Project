package spring.siroragi.join;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import spring.kh.siroragi.CommandMap;

@Controller
public class JoinController {

	@Resource(name="joinService")
	private JoinService joinService;
		
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
	
	@RequestMapping(value="/joinComplete", method=RequestMethod.POST)
	public ModelAndView joinComplete(CommandMap commandMap, HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView();
		String MEMBER_EMAIL = request.getParameter("MEMBER_EMAIL1")+"@"+request.getParameter("MEMBER_EMAIL2");
		commandMap.getMap().put("MEMBER_EMAIL", MEMBER_EMAIL);
		joinService.insertMember(commandMap.getMap(), request);
		mv.setViewName("joinComplete");
		return mv;
		
	}
}
