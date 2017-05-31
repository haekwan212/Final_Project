package spring.siroragi.point;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import spring.kh.siroragi.CommandMap;
import spring.kh.siroragi.Paging;
import spring.siroragi.point.PointService;

@Controller
public class PointController {
	
	@Resource(name="pointService")
	private PointService pointService;
	
	//나의 포인트 내역
	@RequestMapping(value="/member/point")
	public ModelAndView myPoint(CommandMap commandMap, HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView("myPage/myPoint");
		HttpSession session = request.getSession();
		commandMap.put("MEMBER_NUMBER", session.getAttribute("MEMBER_NUMBER"));
		System.out.println("38번쨰줄 : "+commandMap.getMap());
		List<Map<String, Object>> myPoint = pointService.myPoint(commandMap.getMap());
		Map<String, Object> sumPoint = pointService.sumPoint(commandMap.getMap());
		
		mv.addObject("sumPoint", sumPoint.get("SUM"));
		mv.addObject("myPoint", myPoint);
		System.out.println("회원 번호 : "+session.getAttribute("MEMBER_NUMBER"));
		System.out.println("포인트 : "+sumPoint);
		return mv;
	}
	

}
