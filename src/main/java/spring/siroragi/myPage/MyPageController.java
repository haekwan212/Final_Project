package spring.siroragi.myPage;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import spring.kh.siroragi.CommandMap;
import spring.siroragi.qna.QnaService;

@Controller
public class MyPageController {
	
	@Resource(name="mypageService")
	private MyPageService mypageService;
	
	@Resource(name="qnaService")
	private QnaService qnaService;

	@RequestMapping(value="/mypage")
	public ModelAndView mypageForm(CommandMap commandMap, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		String m_num = session.getAttribute("MEMBER_NUMBER").toString();
		commandMap.getMap().put("MEMBER_NUMBER", m_num);
		int newAlarm = qnaService.qnaNewAlarm(commandMap.getMap());
		mv.setViewName("mypage");
		mv.addObject("newAlarm", newAlarm);
		return mv;
	}
	@RequestMapping(value="/qna/updateRepState")
	@ResponseBody
	public ModelAndView updateRepState(CommandMap commandMap, HttpSession session) throws Exception{
		String QNA_NUMBER = commandMap.get("QNA_NUMBER").toString();
		System.out.println("QNA번호="+QNA_NUMBER);
		qnaService.updateRepState(commandMap.getMap());
		String m_num = session.getAttribute("MEMBER_NUMBER").toString();
		List<Map<String, Object>> qnalist = qnaService.qnalistById(m_num);
		List<Map<String, Object>> qnalist2 = qnaService.qnalistById2(m_num);
		System.out.println("목록2"+qnalist2.toString());
		ModelAndView mv = new ModelAndView("qnalist");
		mv.addObject("qnalist", qnalist);
		mv.addObject("qnalist2", qnalist2);
		return mv;
	}
	
	@RequestMapping(value="/orderlist")
	@ResponseBody
	public ModelAndView orderlist(){
		ModelAndView mv = new ModelAndView("orderlist");
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
	public ModelAndView review(HttpSession session) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("review");
		return mv;
	}
	
	@RequestMapping(value="/qna")
	@ResponseBody
	public ModelAndView qnalist(HttpSession session) throws Exception{
		String m_num = session.getAttribute("MEMBER_NUMBER").toString();
		System.out.println("멤넘 : "+m_num);
		List<Map<String, Object>> qnalist = qnaService.qnalistById(m_num);
		List<Map<String, Object>> qnalist2 = qnaService.qnalistById2(m_num);
		System.out.println("목록2"+qnalist2.toString());
		ModelAndView mv = new ModelAndView("qnalist");
		mv.addObject("qnalist", qnalist);
		mv.addObject("qnalist2", qnalist2);
		return mv;
	}
	
	@RequestMapping(value="/myinfo")
	public ModelAndView myinfo(HttpSession session) throws Exception{
		String id = session.getAttribute("MEMBER_ID").toString();
		Map<String, Object> myinfo = mypageService.myinfoDetail(id);
		ModelAndView mv = new ModelAndView();
		//이메일 폼 변경
		String email = myinfo.get("MEMBER_EMAIL").toString();
		String[] m_email = email.split("@");
		myinfo.put("MEMBER_EMAIL1", m_email[0].toString());
		myinfo.put("MEMBER_EMAIL2", m_email[1].toString());
		//날짜 폼 변경
		String date = myinfo.get("MEMBER_BIRTHDAY").toString();
		SimpleDateFormat original_format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		SimpleDateFormat new_format = new SimpleDateFormat("yyyyMMdd");
		
		Date orginal_date = original_format.parse(date);
		String new_date = new_format.format(orginal_date);
		myinfo.put("MEMBER_BIRTHDAY", new_date);
		
		mv.addObject("myinfo", myinfo);
		mv.setViewName("myinfo");
		return mv;
	}
	
	@RequestMapping(value="/myinfo", method=RequestMethod.POST)
	public ModelAndView updateMyinfo(CommandMap commandMap, HttpSession session) throws Exception{
		String password = commandMap.get("MEMBER_PASSWORD").toString();
		if(password.equals("") || password.equals(null)){
		String email1 = commandMap.get("MEMBER_EMAIL1").toString();
		String email2 = commandMap.get("MEMBER_EMAIL2").toString();
		commandMap.getMap().put("MEMBER_EMAIL", email1+"@"+email2);
		mypageService.updateMyinfo(commandMap.getMap());
		}else{
		mypageService.changeMypassword(commandMap.getMap());
		}
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:myinfo");
		return mv;
	}
}
