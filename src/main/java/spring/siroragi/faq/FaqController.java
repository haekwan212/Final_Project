package spring.siroragi.faq;

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
public class FaqController {

	@Resource(name = "faqService")
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

	// 리스트불러오기(검색)
	@RequestMapping(value = "/faq/faqList")
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
			mv.setViewName("/faq/faq");
			
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
			mv.setViewName("/faq/faq");
			
			return mv;
		}
	}

	// 입력폼
	@RequestMapping(value = "/faq/faqForm")
	public ModelAndView faqWrite(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("/faq/faqForm");

		return mv;
	}

	// 글쓰기
	@RequestMapping(value = "/faq/faqWrite")
	public ModelAndView faqWrite(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/faq/faqList");

		faqService.faqWrite(commandMap.getMap(), request);
		/*mv.setViewName();*/

		return mv;
	}

	// 상세보기
	@RequestMapping(value = "/faq/faqDetail")
	public ModelAndView faqDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView();

		Map<String, Object> map = faqService.faqDetail(commandMap.getMap());
		mv.addObject("map", map.get("map"));
		mv.addObject("list", map.get("list"));
		mv.setViewName("/faq/faqDetail");

		return mv;
	}

	// 수정하기 폼
	@RequestMapping(value = "/faq/faqModifyForm")
	public ModelAndView faqModifyForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView();

		Map<String, Object> map = faqService.faqDetail(commandMap.getMap());
		mv.addObject("map", map.get("map"));
		mv.addObject("list", map.get("list"));
		mv.setViewName("/faq/faqModify");

		return mv;
	}

	// 수정하기
	@RequestMapping(value = "/faq/faqModify")
	public ModelAndView faqModify(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView();

		faqService.faqModify(commandMap.getMap());

		mv.addObject("FAQ_NUMBER", commandMap.get("FAQ_NUMBER"));
		mv.setViewName("redirect:/faq/faqDetail");

		return mv;
	}

	// 삭제하기
	@RequestMapping(value = "/faq/faqDelete")
	public ModelAndView faqDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView();

		faqService.faqDelete(commandMap.getMap());
		mv.setViewName("redirect:/faq/faqList");

		return mv;

		// 파일첨부


	}
}
