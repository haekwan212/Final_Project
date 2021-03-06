package spring.siroragi.admin;

import java.util.HashMap;
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
import spring.siroragi.review.ReviewService;

@Controller
public class AdminController {

	@Resource(name = "faqService")
	private FaqService faqService;

	@Resource(name = "reviewService")
	private ReviewService reviewService;

	// 검색, 페이징
	private int searchNum;
	String isSearch;

	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 10;
	private int blockPage = 5;
	private String pagingHtml;
	private Paging page;

	// 관리자페이지로 이동
	@RequestMapping(value = "/admin/adminPage")
	public String list() {
		return "adminForm";
	}

	////// <!--------- FAQ start -------->//////

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
		
		String s = request.getParameter("isSearch");
		Map<String, Object> isSearchMap= new HashMap<String, Object>();
		
		if (request.getParameter("isSearch") != null) {
			isSearch= new String(s.getBytes("iso-8859-1"), "utf-8");
			searchNum = Integer.parseInt(request.getParameter("searchNum"));
			isSearchMap.put("isSearch", isSearch);
			if (searchNum == 0) { // 글제목
				list = faqService.searchTitleList(isSearchMap,isSearch);
			}
			if (searchNum == 1) { // 글내용
				list = faqService.searchContentList(isSearchMap, isSearch);
			}

			totalCount = list.size();
			page = new Paging(currentPage, totalCount, blockCount, blockPage, "faqAdmin", searchNum, isSearch);
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

			page = new Paging(currentPage, totalCount, blockCount, blockPage, "faqAdmin");
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

	// FAQ 등록폼
	@RequestMapping(value = "/admin/faqAdminForm")
	public String faqWrite() {
		return "faqAdminForm";
	}

	// FAQ 등록
	@RequestMapping(value = "/admin/faqWrite")
	public ModelAndView faqWrite(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();

		faqService.faqWrite(commandMap.getMap(), request);
		mv.setViewName("redirect:/admin/faqAdmin");

		return mv;
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

	////// <!--------- FAQ end -------->//////
	

	////// <!--------- review start -------->//////

	// 리뷰 관리자페이지 이동
	@RequestMapping(value = "/admin/reviewAdmin")
	public ModelAndView reviewList(CommandMap commandMap, HttpServletRequest request) throws Exception {

		if (request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty()
				|| request.getParameter("currentPage").equals("0")) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		ModelAndView mv = new ModelAndView();
		List<Map<String, Object>> list = reviewService.reviewList(commandMap.getMap());

		String s= request.getParameter("isSearch");
		Map<String, Object> isSearchMap= new HashMap<String, Object>();
		
		if (request.getParameter("isSearch")!= null) {
			isSearch = new String(s.getBytes("iso-8859-1"), "utf-8");
			searchNum = Integer.parseInt(request.getParameter("searchNum"));
			isSearchMap.put("isSearch", isSearch);
			
			if (searchNum == 0) { // 글제목
				list = reviewService.searchReviewList0(isSearchMap);
			}
			else if (searchNum == 1) { // 글내용
				list = reviewService.searchReviewList1(isSearchMap);
			}
			else if (searchNum == 2) { // 글내용
				list = reviewService.searchReviewList2(isSearchMap);
			}

			totalCount = list.size();
			page = new Paging(currentPage, totalCount, blockCount, blockPage, "reviewAdmin", searchNum, isSearch);
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
			mv.setViewName("reviewAdmin");

			return mv;

		} else {
			totalCount = list.size();

			page = new Paging(currentPage, totalCount, blockCount, blockPage, "reviewAdmin");
			pagingHtml = page.getPagingHtml().toString();

			int lastCount = totalCount;

			if (page.getEndCount() < totalCount)
				lastCount = page.getEndCount() + 1;

			list = list.subList(page.getStartCount(), lastCount);

			mv.addObject("totalCount", totalCount);
			mv.addObject("pagingHtml", pagingHtml);
			mv.addObject("currentPage", currentPage);

			mv.addObject("list", list);
			mv.setViewName("reviewAdmin");

			return mv;
		}
	}

	// review 삭제하기
	@RequestMapping(value = "/admin/reviewAdminDelete")
	public ModelAndView reviewDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView();

		reviewService.reviewDelete(commandMap.getMap());
		mv.setViewName("redirect:/admin/reviewAdmin");

		return mv;
	}

	////// <!--------- review end -------->//////

}