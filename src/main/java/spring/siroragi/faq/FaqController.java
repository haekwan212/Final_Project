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
		
	/*////////
			Map<String,Object> map = commandMap.getMap();
				for(int i=0; i<11; i++){
					map.put("FAQ_CATEGORY", i);
				}
				List<List<Map<String, Object>>> list2 = faqService.faqCategory(commandMap.getMap());
					for(int i=0; i<11; i++){
						
					mv.addObject("list_"+i, list2.get(i));
					
					
				
					return mv;
					}
			//////
	 	*/				
				
		List<Map<String, Object>> list = faqService.faqList(commandMap.getMap()); //Admin Page 전체리스트
	 
		List<Map<String, Object>> list1 = faqService.faqList1(commandMap.getMap());  //카테고리별 리스트 
		List<Map<String, Object>> list2 = faqService.faqList2(commandMap.getMap());
		List<Map<String, Object>> list3 = faqService.faqList3(commandMap.getMap());
		List<Map<String, Object>> list4 = faqService.faqList4(commandMap.getMap());
		List<Map<String, Object>> list5 = faqService.faqList5(commandMap.getMap());
		List<Map<String, Object>> list6 = faqService.faqList6(commandMap.getMap());
		List<Map<String, Object>> list7 = faqService.faqList7(commandMap.getMap());
		List<Map<String, Object>> list8 = faqService.faqList8(commandMap.getMap());
		List<Map<String, Object>> list9 = faqService.faqList9(commandMap.getMap());
		List<Map<String, Object>> list10 = faqService.faqList10(commandMap.getMap());
		
		
		mv.addObject("list", list);  //Admin Page 전체리스트
		
		mv.addObject("list1", list1);	//카테고리별 리스트
		mv.addObject("list2", list2);
		mv.addObject("list3", list3);
		mv.addObject("list4", list4);
		mv.addObject("list5", list5);
		mv.addObject("list6", list6);
		mv.addObject("list7", list7);
		mv.addObject("list8", list8);
		mv.addObject("list9", list9);
		mv.addObject("list10", list10);
		

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
			mv.setViewName("faqList");
			
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

			
			mv.setViewName("faqList");
			
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
		 //mv.setViewName(); 

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
