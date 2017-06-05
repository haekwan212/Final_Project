package spring.siroragi.adminCancel;

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

@Controller
public class AdminCancelController {

	@Resource(name = "adminCancelService")
	private AdminCancelService adminCancelService;

	// 페이징 변수
	private int searchNum;
	private String isSearch;

	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 10;
	private int blockPage = 10;
	private String pagingHtml;
	private Paging page;
	
	@RequestMapping(value="cancel/cancelList")
	public ModelAndView allCancelList(CommandMap commandMap, HttpServletRequest request) throws Exception{
		
		ModelAndView mv = new ModelAndView("adminCancelList");
		
		if (request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty()
				|| request.getParameter("currentPage").equals("0") || request.getParameter("currentPage").equals("null")) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		List<Map<String,Object>> cancelList=adminCancelService.allCancelList(commandMap.getMap());
		
		String s = request.getParameter("isSearch");
		Map<String,Object> isSearchMap;
		
		if (request.getParameterMap().get("isSearch") != null && request.getParameterMap().get("isSearch") !="") {
			isSearch= new String(s.getBytes("iso-8859-1"),"utf-8");
			isSearchMap=new HashMap<String, Object>();
			searchNum = Integer.parseInt(request.getParameter("searchNum"));
			isSearchMap.put("isSearch", isSearch);
			
			System.out.println("isSearch : "+isSearchMap);
			if (searchNum == 1)// 결제상태 검색
				cancelList = adminCancelService.allCancelSearch1(isSearchMap);
			else if (searchNum == 2)// 상품주문상태 검색
				cancelList = adminCancelService.allCancelSearch2(isSearchMap);
			else if (searchNum == 3)// 배송상태
				cancelList = adminCancelService.allCancelSearch3(isSearchMap);
			else if (searchNum == 4)// 주문코드
				cancelList = adminCancelService.allCancelSearch4(isSearchMap);
			

			totalCount = cancelList.size();
			page = new Paging(currentPage, totalCount, blockCount, blockPage, "cancelList", searchNum, isSearch);
			pagingHtml = page.getPagingHtml().toString();

			int lastCount = totalCount;

			if (page.getEndCount() < totalCount)
				lastCount = page.getEndCount() + 1;

			cancelList = cancelList.subList(page.getStartCount(), lastCount);

			mv.addObject("isSearch", isSearch);
			mv.addObject("searchNum", searchNum);
			mv.addObject("totalCount", totalCount);
			mv.addObject("pagingHtml", pagingHtml);
			mv.addObject("currentPage", currentPage);
			mv.addObject("cancelList", cancelList);
			mv.setViewName("adminCancelList");
			return mv;
		}
		
		totalCount = cancelList.size();
		page = new Paging(currentPage, totalCount, blockCount, blockPage, "cancelList", searchNum, isSearch);
		pagingHtml = page.getPagingHtml().toString();

		int lastCount = totalCount;

		if (page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;
		
		cancelList = cancelList.subList(page.getStartCount(), lastCount);

		mv.addObject("totalCount", totalCount);
		mv.addObject("pagingHtml", pagingHtml);
		mv.addObject("currentPage", currentPage);

		mv.addObject("cancelList", cancelList);
		
		return mv;
	}

	// 반품,교환신청목록
	@RequestMapping(value="cancel/exchangeList")
	public ModelAndView allExchangeList(CommandMap commandMap, HttpServletRequest request) throws Exception{
		
		ModelAndView mv = new ModelAndView("adminExchangeList");
		
		if (request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty()
				|| request.getParameter("currentPage").equals("0") || request.getParameter("currentPage").equals("null")) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		List<Map<String,Object>> exchangeList=adminCancelService.allExchangeList(commandMap.getMap());
		
		String s = request.getParameter("isSearch");
		Map<String,Object> isSearchMap;
		
		if (request.getParameterMap().get("isSearch") != null && request.getParameterMap().get("isSearch") !="") {
			isSearch= new String(s.getBytes("iso-8859-1"),"utf-8");
			isSearchMap=new HashMap<String, Object>();
			searchNum = Integer.parseInt(request.getParameter("searchNum"));
			isSearchMap.put("isSearch", isSearch);
			
			if (searchNum == 1)// 결제상태 검색
				exchangeList = adminCancelService.allExchangeSearch1(isSearchMap);
			else if (searchNum == 2)// 상품주문상태 검색
				exchangeList = adminCancelService.allExchangeSearch2(isSearchMap);
			else if (searchNum == 3)// 배송상태
				exchangeList = adminCancelService.allExchangeSearch3(isSearchMap);
			else if (searchNum == 4)// 주문코드
				exchangeList = adminCancelService.allExchangeSearch4(isSearchMap);
			else if (searchNum == 5)// 상품명
				exchangeList = adminCancelService.allExchangeSearch5(isSearchMap);

			totalCount = exchangeList.size();
			page = new Paging(currentPage, totalCount, blockCount, blockPage, "exchangeList", searchNum, isSearch);
			pagingHtml = page.getPagingHtml().toString();

			int lastCount = totalCount;

			if (page.getEndCount() < totalCount)
				lastCount = page.getEndCount() + 1;

			exchangeList = exchangeList.subList(page.getStartCount(), lastCount);

			mv.addObject("isSearch", isSearch);
			mv.addObject("searchNum", searchNum);
			mv.addObject("totalCount", totalCount);
			mv.addObject("pagingHtml", pagingHtml);
			mv.addObject("currentPage", currentPage);
			mv.addObject("exchangeList", exchangeList);
			mv.setViewName("adminExchangeList");
			return mv;
		}
		
		totalCount = exchangeList.size();
		page = new Paging(currentPage, totalCount, blockCount, blockPage, "exchangeList", searchNum, isSearch);
		pagingHtml = page.getPagingHtml().toString();

		int lastCount = totalCount;

		if (page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;
		
		exchangeList = exchangeList.subList(page.getStartCount(), lastCount);

		mv.addObject("totalCount", totalCount);
		mv.addObject("pagingHtml", pagingHtml);
		mv.addObject("currentPage", currentPage);

		mv.addObject("exchangeList", exchangeList);
		
		return mv;
	}

}
