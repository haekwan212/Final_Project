package spring.siroragi.admin;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import spring.kh.siroragi.CommandMap;
import spring.siroragi.faq.FaqService;

@Controller
public class AdminController {
	
	@Resource
	private FaqService faqService;
	
	//관리자페이지로 이동
	@RequestMapping(value="/admin/adminPage")
	public String list() {
		return "adminForm";
	}
	
	// FAQ 관리자페이지 이동
	@RequestMapping(value = "/admin/faqAdmin")
	public ModelAndView faqList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView();

		List<Map<String, Object>> list = faqService.faqList(commandMap.getMap());
		mv.addObject("list", list);
		mv.setViewName("faqAdmin");
		return mv;
	}
	
}