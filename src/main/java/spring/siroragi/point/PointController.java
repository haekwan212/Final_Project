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
	
		/*// 페이징 변수
		private int currentPage = 1;
		private int totalCount;
		private int blockCount = 7;
		private int blockPage = 5;
		private String pagingHtml;
		private Paging page;	
		
		private String isSearch;
		private int searchNum;
		*/
	@Resource(name="pointService")
	private PointService pointService;
	
	//나의 포인트 내역
	@RequestMapping(value="/member/myPoint")
	public ModelAndView myPoint(CommandMap commandMap, HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView("myPage/myPoint");
		HttpSession session = request.getSession();
		commandMap.put("MEMBER_NUMBER", session.getAttribute("MEMBER_NUMBER"));
		List<Map<String, Object>> myPoint = pointService.myPoint(commandMap.getMap());
		Map<String, Object> sumPoint = pointService.sumPoint(commandMap.getMap());
		
		/*if (request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty()
				|| request.getParameter("currentPage").equals("0")) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		isSearch = request.getParameter("isSearch");

		if (isSearch != null) {

			searchNum = Integer.parseInt(request.getParameter("searchNum"));

			System.out.println("getMap : " + commandMap.getMap());

			if (searchNum == 0) // 이름
				myPoint = pointService.myPoint(commandMap.getMap());

			totalCount = myPoint.size();
			page = new Paging(currentPage, totalCount, blockCount, blockPage, "myPoint", searchNum, isSearch);
			pagingHtml = page.getPagingHtml().toString();

			int lastCount = totalCount;

			if (page.getEndCount() < totalCount)
				lastCount = page.getEndCount() + 1;

			myPoint = myPoint.subList(page.getStartCount(), lastCount);

			mv.addObject("isSearch", isSearch);
			mv.addObject("searchNum", searchNum);
			mv.addObject("totalCount", totalCount);
			mv.addObject("pagingHtml", pagingHtml);
			mv.addObject("currentPage", currentPage);*/
			
			/*mv.addObject("sumPoint", sumPoint.get("SUM"));
			mv.addObject("myPoint", myPoint);
			return mv;*/

		/*} else {

			searchNum = 0;

			totalCount = myPoint.size();

			page = new Paging(currentPage, totalCount, blockCount, blockPage, "myPoint");
			pagingHtml = page.getPagingHtml().toString();

			int lastCount = totalCount;

			if (page.getEndCount() < totalCount)
				lastCount = page.getEndCount() + 1;

			myPoint = myPoint.subList(page.getStartCount(), lastCount);
*/
			Map<String, Object> firstLine = myPoint.get(0);
			System.out.println("잔여적립 : "+myPoint.get(0));
			/*mv.addObject("totalCount", totalCount);
			mv.addObject("pagingHtml", pagingHtml);
			mv.addObject("currentPage", currentPage);*/
			
			mv.addObject("firstLine", firstLine);
			mv.addObject("sumPoint", sumPoint.get("SUM"));
			mv.addObject("myPoint", myPoint);
			return mv;
		}
	}

