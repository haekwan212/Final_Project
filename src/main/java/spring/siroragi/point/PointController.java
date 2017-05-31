package spring.siroragi.point;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import spring.kh.siroragi.CommandMap;

@Controller
public class PointController {
	
	
	//나의 포인트 내역
	@RequestMapping(value="/member/point")
	public ModelAndView myPoint(CommandMap commandMap, HttpServletRequest request,CommandMap Map) throws Exception{
		ModelAndView mv = new ModelAndView("myPage/myPoint");
		HttpSession session = request.getSession();

		System.out.println("회원 번호 : "+session.getAttribute("MEMBER_NUMBER"));
		return mv;
	}

}
