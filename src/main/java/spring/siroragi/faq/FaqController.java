package spring.siroragi.faq;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import spring.kh.siroragi.CommandMap;
import spring.siroragi.faq.FaqService;

@Controller
public class FaqController {

	@Resource(name = "faqService")
	private FaqService faqService;

	
	// 리스트불러오기(검색)
	@RequestMapping(value = "/faq/faqList")
	public ModelAndView faqList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/faq/faq");

		List<Map<String, Object>> list = faqService.faqList(commandMap.getMap());
		mv.addObject("list", list);

		return mv;
	}

	// 입력폼
	@RequestMapping(value = "/faq/faqForm")
	public ModelAndView faqWrite(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/faq/faqForm");

		return mv;
	}

	// 글쓰기
	@RequestMapping(value = "/faq/faqWrite")
	public ModelAndView faqWrite(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/faq/faqList");

		faqService.faqWrite(commandMap.getMap(), request);

		return mv;
	}

	// 상세보기
	@RequestMapping(value = "/faq/faqDetail")
	public ModelAndView faqDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/faq/faqDetail");

		Map<String, Object> map = faqService.faqDetail(commandMap.getMap());
		mv.addObject("map", map.get("map"));
		mv.addObject("list", map.get("list"));

		return mv;
	}

	// 수정하기 폼
	@RequestMapping(value = "/faq/faqModifyForm")
	public ModelAndView faqModify(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/faq/faqModify");

		Map<String, Object> map = faqService.faqDetail(commandMap.getMap());
		mv.addObject("map", map.get("map"));
		mv.addObject("list", map.get("list"));

		return mv;
	}

	// 수정하기
	@RequestMapping(value = "/faq/faqModify")
	public ModelAndView faqModify(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/faq/faqDetail");

		faqService.faqModify(commandMap.getMap(), request);

		mv.addObject("FAQ_NUMBER", commandMap.get("FAQ_NUMBER"));
		return mv;
	}

	// 삭제하기
	@RequestMapping(value = "/faq/faqDelete")
	public ModelAndView faqDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/faq/faqList");

		faqService.faqDelete(commandMap.getMap());

		return mv;

		// 파일첨부
		// 검색하기
		// 페이징

	}
}
