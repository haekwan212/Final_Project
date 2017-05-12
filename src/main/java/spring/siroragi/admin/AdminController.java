package spring.siroragi.admin;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import spring.kh.siroragi.CommandMap;
import spring.kh.siroragi.Paging;


import spring.siroragi.faq.FaqService;

@Controller
public class AdminController {

	@Resource
	private FaqService faqService;
	
	// 검색, 페이징
		private int searchNum;
		private String isSearch;

		private int currentPage = 1;
		private int totalCount;
		private int blockCount = 7;
		private int blockPage = 5;
		private String pagingHtml;
		private Paging page;


	// 관리자페이지로 이동
	@RequestMapping(value = "/admin/adminPage")
	public String list() {
		return "adminForm";
	}

	
	
	//////<!---------  FAQ start -------->//////
	
	// FAQ 관리자페이지 이동
	@RequestMapping(value = "/admin/faqAdmin")
	public ModelAndView faqList(CommandMap commandMap, HttpServletRequest request) throws Exception {
		
		if (request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty()
				|| request.getParameter("currentPage").equals("0")) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		ModelAndView mv = new ModelAndView();
		List<Map<String, Object>> list = faqService.faqList(commandMap.getMap());

		
		
		isSearch = request.getParameter("isSearch");
		if (isSearch != null) {
			searchNum = Integer.parseInt(request.getParameter("searchNum"));

			if (searchNum == 0) { // 글제목
				list = faqService.searchTitleList(commandMap.getMap(), isSearch);
			}
			if (searchNum == 1) { // 글내용
				list = faqService.searchContentList(commandMap.getMap(), isSearch);
			}

			totalCount = list.size();
			page = new Paging(currentPage, totalCount, blockCount, blockPage, "faqList", searchNum, isSearch);
			pagingHtml = page.getPagingHtml().toString();

			int lastCount = totalCount;

			if (page.getEndCount() < totalCount)
				lastCount = page.getEndCount() + 1;

			list = list.subList(page.getStartCount(), lastCount);

			mv.addObject("isSearch", isSearch);
			mv.addObject("searchNum", searchNum);
			mv.addObject("totalCount", totalCount);
			mv.addObject("pagingHtml", pagingHtml);
			mv.addObject("currentPage", currentPage);
			mv.addObject("list", list);
			mv.setViewName("faqAdmin");
			
			return mv;

		} else {
			totalCount = list.size();

			page = new Paging(currentPage, totalCount, blockCount, blockPage, "faqList");
			pagingHtml = page.getPagingHtml().toString();

			int lastCount = totalCount;

			if (page.getEndCount() < totalCount)
				lastCount = page.getEndCount() + 1;

			list = list.subList(page.getStartCount(), lastCount);

			mv.addObject("totalCount", totalCount);
			mv.addObject("pagingHtml", pagingHtml);
			mv.addObject("currentPage", currentPage);

			mv.addObject("list", list);
			mv.setViewName("faqAdmin");
			
			return mv;
		}
	}
		

	// FAQ 수정폼 이동
	@RequestMapping(value = "/admin/faqAdminModifyForm")
	public ModelAndView faqModifyForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView();

		Map<String, Object> map = faqService.faqDetail(commandMap.getMap());
		mv.addObject("map", map.get("map"));
		mv.addObject("list", map.get("list"));
		mv.setViewName("faqAdminModify");

		return mv;
	}

	// FAQ 수정
	@RequestMapping(value = "/admin/faqAdminModify")
	public ModelAndView faqModify(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView();

		faqService.faqModify(commandMap.getMap());

		mv.addObject("FAQ_NUMBER", commandMap.get("FAQ_NUMBER"));
		mv.setViewName("redirect:/admin/faqAdmin");

		return mv;
	}

	// FAQ 삭제하기
	@RequestMapping(value = "/admin/faqAdminDelete")
	public ModelAndView faqDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView();

		faqService.faqDelete(commandMap.getMap());
		mv.setViewName("redirect:/admin/faqAdmin");

		return mv;
	}
	
	//////<!---------  FAQ end -------->//////
	
	
	
	
	
}