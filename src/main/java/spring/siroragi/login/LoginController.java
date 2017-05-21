package spring.siroragi.login;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import spring.kh.siroragi.CommandMap;
import spring.siroragi.member.MemberService;

@Controller
public class LoginController {

	@Resource(name="loginService")
	private LoginService loginService;
	
	@Resource(name="memberService")
	private  MemberService memberService;
/*	function(data){
		$("#are").html(data);
	}*/
	//로그인 폼
	@RequestMapping(value="/loginForm")
	public ModelAndView loginForm(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("loginForm");
		return mv;
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public ModelAndView loginComplete(CommandMap commandMap,HttpServletRequest request)throws Exception{
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		System.out.println("아이디"+commandMap.get("MEMBER_ID"));
	Map<String, Object> chk = loginService.loginByIdAndPassword(commandMap.getMap());
	if(chk == null){
		mv.setViewName("loginForm");
		mv.addObject("message", "해당 아이디가 없습니다.");
		return mv;
	}else{
		System.out.println("비밀번호1 : "+chk.get("MEMBER_PASSWORD")+"\n2 : "+commandMap.get("MEMBER_PASSWORD"));
	if(chk.get("MEMBER_PASSWORD").equals(commandMap.get("MEMBER_PASSWORD"))){
		System.out.println("야호");
		session.setAttribute("MEMBER_ID", commandMap.get("MEMBER_ID"));
		mv.addObject("MEMBER", chk);
		
		mv.setViewName("redirect:/main");
		return mv;
	}else{
		mv.setViewName("loginForm");
		mv.addObject("message", "비밀번호를 확인해 주세요.");
		return mv;
	}
	}
}
	@RequestMapping(value="/logout")
	public ModelAndView logout(HttpServletRequest request, CommandMap commandMap){
		HttpSession session = request.getSession(false);
		if(session != null)
			session.invalidate();
		ModelAndView mv= new ModelAndView();
		mv.setViewName("redirect:/main");
		return mv;
	}
}