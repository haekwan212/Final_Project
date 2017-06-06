package spring.siroragi.myPage;

import java.io.File;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.ModelAndView;

import spring.kh.siroragi.CommandMap;
import spring.siroragi.point.PointService;
import spring.siroragi.qna.QnaService;

@Controller
public class MyPageController {
	
	@Resource(name="mypageService")
	private MyPageService mypageService;
	
	@Resource(name="qnaService")
	private QnaService qnaService;
	
	@Resource(name="pointService")
	private PointService pointService;

	@RequestMapping(value="/mypage")
	public ModelAndView mypageForm(CommandMap commandMap, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		String m_num = session.getAttribute("MEMBER_NUMBER").toString();
		commandMap.getMap().put("MEMBER_NUMBER", m_num);
		int newAlarm = qnaService.qnaNewAlarm(commandMap.getMap());
		int selectOtoCount = mypageService.selectOtoCount(m_num);
		mv.setViewName("mypage");
		Map<String, Object> sumPoint = pointService.sumPoint(commandMap.getMap());
		mv.addObject("sumPoint", sumPoint.get("SUM"));
		mv.addObject("newAlarm", newAlarm);
		mv.addObject("selectOtoCount", selectOtoCount);
		return mv;
	}
	
	@RequestMapping(value="/orderlist")
	@ResponseBody
	public ModelAndView orderlist(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView("orderlist");
		String mem_num = session.getAttribute("MEMBER_NUMBER").toString();
		List<Map<String, Object>> list = mypageService.selectOrderList(mem_num);
		System.out.println("목록:"+list.toString());
		mv.addObject("list", list);
		return mv;
	}
	@RequestMapping(value="/orderlist/payUpdate")
	@ResponseBody
	public ModelAndView orderlist_pay_update(CommandMap commandMap, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView("orderlist");
		String flag = URLDecoder.decode(commandMap.get("flag").toString(), "utf-8");
		String mem_num = session.getAttribute("MEMBER_NUMBER").toString();
		if(flag.equals("구매취소")){
			mypageService.cancel_order(commandMap.getMap());
		}else{
			mypageService.confirm_order(commandMap.getMap());
		}
		List<Map<String, Object>> list = mypageService.selectOrderList(mem_num);
		System.out.println("목록:"+list.toString());
		mv.addObject("list", list);
		return mv;
	}
	
	@RequestMapping(value="/oneToOne")
	@ResponseBody
	public ModelAndView oneToOneForm(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView("/qna/oneToOneQna");
		String mem_num = session.getAttribute("MEMBER_NUMBER").toString();
		List<Map<String, Object>> list = mypageService.selectOtoList(mem_num);
		List<Map<String, Object>> list2 = mypageService.selectOtoComplete(mem_num);
		mv.addObject("list", list);
		mv.addObject("list2", list2);
		return mv;
	}
	
	@RequestMapping(value="/oneToOne/form")
	public ModelAndView oneToOneForm(CommandMap map){
		ModelAndView mv = new ModelAndView("modal_oneToOneWriteForm");
		return mv;
	}
	
	@RequestMapping(value="/oneToOne/write", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView oneToOneWrite(CommandMap commandMap, HttpServletRequest request) throws Exception{	
		ModelAndView mv = new ModelAndView();
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) request;
		if(multipartHttpServletRequest.getFile("QNA_IMAGE1") != null){
		String now = new SimpleDateFormat("yyyyMMddHmsS").format(new Date());
		MultipartFile QNA_IMAGE1 = multipartHttpServletRequest.getFile("QNA_IMAGE1");
		String filePath = "C:\\Java\\App\\SIRORAGI\\src\\main\\webapp\\file\\qnaFile\\";
		String fileName = "qna_"+commandMap.get("MEMBER_NUMBER").toString()+"_"+now;
		String IMAGEExtension = QNA_IMAGE1.getOriginalFilename().substring(QNA_IMAGE1.getOriginalFilename().lastIndexOf("."));
		File file1 = new File(filePath+fileName+IMAGEExtension);
		QNA_IMAGE1.transferTo(file1);
		commandMap.put("QNA_IMAGE1", fileName+IMAGEExtension);
		}else{
			commandMap.put("QNA_IMAGE1", "이미지없음");
		}
		
		String m = commandMap.getMap().toString();
		System.out.println("map="+m);
		qnaService.insertOneToOne(commandMap.getMap());
		mv.setViewName("redirect:/mypage#oneToOne");
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
	

	
	@RequestMapping(value="/exchangelist")
	@ResponseBody
	public ModelAndView exchangelist(HttpSession session) throws Exception{
		String mem_num = session.getAttribute("MEMBER_NUMBER").toString();
		List<Map<String, Object>> list = mypageService.selectExchangeList(mem_num);
		ModelAndView mv = new ModelAndView("exchangelist");
		mv.addObject("list", list);
		return mv;
	}
	
	@RequestMapping(value="/exchangelist/form")
	@ResponseBody
	public ModelAndView exchangelistForm(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("modal_exchangeForm");
		String orderNumber = commandMap.get("ORDER_NUMBER").toString();
		mv.addObject("ORDER_NUMBER", orderNumber);
		return mv;
	}
	
	@RequestMapping(value="/exchangelist/write", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView exchangelistWrite(CommandMap commandmap) throws Exception{
		System.out.println(commandmap.getMap().toString());
		ModelAndView mv = new ModelAndView();
		mypageService.updateExchange(commandmap.getMap());
		mv.setViewName("redirect:/mypage#exchangelist");
		return mv;
	}
	
	@RequestMapping(value="/returnlist")
	@ResponseBody
	public ModelAndView returnlist(HttpSession session) throws Exception{
		
		String mem_num = session.getAttribute("MEMBER_NUMBER").toString();
		List<Map<String, Object>> list = mypageService.selectReturnList(mem_num);
		
		ModelAndView mv = new ModelAndView("returnlist");
		Map<String, Object> sumMap = new HashMap<String, Object>();
		mv.addObject("list", list);
		sumMap.put("MEMBER_NUMBER", session.getAttribute("MEMBER_NUMBER"));
		return mv;
	}
	
	@RequestMapping(value="/returnlist/form")
	@ResponseBody
	public ModelAndView returnlistForm(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("modal_returnForm");
		String orderNumber = commandMap.get("ORDER_NUMBER").toString();
		String orderCode = commandMap.get("ORDER_CODE").toString();
		mv.addObject("ORDER_NUMBER", orderNumber);
		mv.addObject("ORDER_CODE", orderCode);
		return mv;
	}
	
	@RequestMapping(value="/returnlist/write", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView returnlistWrite(CommandMap commandmap) throws Exception{
		System.out.println(commandmap.getMap().toString());
		ModelAndView mv = new ModelAndView();
		mypageService.updateReturn(commandmap.getMap());
		mypageService.insertCancelList(commandmap.getMap());
		System.out.println(commandmap.getMap());
		mv.setViewName("redirect:/mypage#returnlist");
		return mv;
	}
	
	
	@RequestMapping(value="/review")
	@ResponseBody
	public ModelAndView review(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView("reviewlist");
		String mem_num = session.getAttribute("MEMBER_NUMBER").toString();
		List<Map<String, Object>> list = mypageService.selectReviewList(mem_num);
		mv.addObject("list", list);
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
		ModelAndView mv = new ModelAndView("myinfo");
		//이메일 폼 변경
		String email = myinfo.get("MEMBER_EMAIL").toString();
		System.out.println("이메일="+email);
		String[] m_email = email.split("@");
		myinfo.put("MEMBER_EMAIL1", m_email[0].toString());
		myinfo.put("MEMBER_EMAIL2", m_email[1].toString());
		//날짜 폼 변경
		if(myinfo.get("MEMBER_BIRTHDAY") !=null){
		String date = myinfo.get("MEMBER_BIRTHDAY").toString();
		
		SimpleDateFormat original_format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		SimpleDateFormat new_format = new SimpleDateFormat("yyyyMMdd");
	
		Date orginal_date = original_format.parse(date);
		String new_date = new_format.format(orginal_date);
		myinfo.put("MEMBER_BIRTHDAY", new_date);
		}
		mv.addObject("myinfo", myinfo);
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
		mv.setViewName("redirect:mypage#myinfo");
		return mv;
	}
}
