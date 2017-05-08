package spring.siroragi.member;

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
public class MemberController {

	// 페이징
	private int searchNum;
/*	private int selectMemberList;*/
	private String isSearch;

	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 7;
	private int blockPage = 5;
	private String pagingHtml;
	private Paging page;

	@Resource(name = "memberService")
	private MemberService memberService;

	// 멤버리스트 불러오기
	@RequestMapping(value = "/admin/memberList")
	public ModelAndView openMemberList(CommandMap commandMap, HttpServletRequest request) throws Exception {

		if (request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty()
				|| request.getParameter("currentPage").equals("0")) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		ModelAndView mv = new ModelAndView();
		List<Map<String, Object>> memberList = memberService.selectMemberList(commandMap.getMap());

		/*selectMemberList = Integer.parseInt(request.getParameter("selectMemberList"));
		
		if (selectMemberList == 1)*/
		
		isSearch = request.getParameter("isSearch");
		if (isSearch != null) {
			searchNum = Integer.parseInt(request.getParameter("searchNum"));

			if (searchNum == 0) { // 아이디
				memberList = memberService.searchMemberList0(commandMap.getMap(), isSearch);
			}
			if (searchNum == 1) { // 이름
				memberList = memberService.searchMemberList1(commandMap.getMap(), isSearch);
			}
			if (searchNum == 2) { // 전화번호
				memberList = memberService.searchMemberList2(commandMap.getMap(), isSearch);
			}
			if (searchNum == 3) { // 이메일
				memberList = memberService.searchMemberList3(commandMap.getMap(), isSearch);
			}
			
			totalCount = memberList.size();
			page = new Paging(currentPage, totalCount, blockCount, blockPage, "memberList", searchNum, isSearch);
			pagingHtml = page.getPagingHtml().toString();

			int lastCount = totalCount;

			if (page.getEndCount() < totalCount)
				lastCount = page.getEndCount() + 1;

			memberList = memberList.subList(page.getStartCount(), lastCount);

			mv.addObject("isSearch", isSearch);
			mv.addObject("searchNum", searchNum);
			mv.addObject("totalCount", totalCount);
			mv.addObject("pagingHtml", pagingHtml);
			mv.addObject("currentPage", currentPage);
			mv.addObject("member", memberList);
			mv.setViewName("memberList");
			return mv;
		} else {
			totalCount = memberList.size();

			page = new Paging(currentPage, totalCount, blockCount, blockPage, "memberList");
			pagingHtml = page.getPagingHtml().toString();

			int lastCount = totalCount;

			if (page.getEndCount() < totalCount)
				lastCount = page.getEndCount() + 1;

			memberList = memberList.subList(page.getStartCount(), lastCount);

			mv.addObject("totalCount", totalCount);
			mv.addObject("pagingHtml", pagingHtml);
			mv.addObject("currentPage", currentPage);

			mv.addObject("member", memberList);
			mv.setViewName("memberList");
			return mv;
		}
	}
	
	// 탈퇴한 멤버리스트 불러오기
		@RequestMapping(value = "/admin/delMemberList")
		public ModelAndView delMemberList(CommandMap commandMap, HttpServletRequest request) throws Exception {

			if (request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty()
					|| request.getParameter("currentPage").equals("0")) {
				currentPage = 1;
			} else {
				currentPage = Integer.parseInt(request.getParameter("currentPage"));
			}

			ModelAndView mv = new ModelAndView();
			List<Map<String, Object>> delMemberList = memberService.selectDelMemberList(commandMap.getMap());

			/*selectMemberList = Integer.parseInt(request.getParameter("selectMemberList"));
		
			if (selectMemberList == 1)*/
			
			isSearch = request.getParameter("isSearch");
			if (isSearch != null) {
				searchNum = Integer.parseInt(request.getParameter("searchNum"));

				if (searchNum == 0) { // 아이디
					delMemberList = memberService.searchMemberList0(commandMap.getMap(), isSearch);
				}
				if (searchNum == 1) { // 이름
					delMemberList = memberService.searchMemberList1(commandMap.getMap(), isSearch);
				}
				if (searchNum == 2) { // 전화번호
					delMemberList = memberService.searchMemberList2(commandMap.getMap(), isSearch);
				}
				if (searchNum == 3) { // 이메일
					delMemberList = memberService.searchMemberList3(commandMap.getMap(), isSearch);
				}
				
				totalCount = delMemberList.size();
				page = new Paging(currentPage, totalCount, blockCount, blockPage, "memberList", searchNum, isSearch);
				pagingHtml = page.getPagingHtml().toString();

				int lastCount = totalCount;

				if (page.getEndCount() < totalCount)
					lastCount = page.getEndCount() + 1;

				delMemberList = delMemberList.subList(page.getStartCount(), lastCount);

				mv.addObject("isSearch", isSearch);
				mv.addObject("searchNum", searchNum);
				mv.addObject("totalCount", totalCount);
				mv.addObject("pagingHtml", pagingHtml);
				mv.addObject("currentPage", currentPage);
				mv.addObject("delMember", delMemberList);
				mv.setViewName("MemberList");
				return mv;
			} else {
				totalCount = delMemberList.size();

				page = new Paging(currentPage, totalCount, blockCount, blockPage, "memberList");
				pagingHtml = page.getPagingHtml().toString();

				int lastCount = totalCount;

				if (page.getEndCount() < totalCount)
					lastCount = page.getEndCount() + 1;

				delMemberList = delMemberList.subList(page.getStartCount(), lastCount);

				mv.addObject("totalCount", totalCount);
				mv.addObject("pagingHtml", pagingHtml);
				mv.addObject("currentPage", currentPage);

				mv.addObject("delMember", delMemberList);
				mv.setViewName("MemberList");
				return mv;
			}
		}

	// 회원정보 불러오기
	@RequestMapping(value = "/admin/openMemberDetail")
	public ModelAndView openMemberDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView();

		Map<String, Object> member = memberService.selectMemberDetail(commandMap.getMap());

		mv.addObject("member", member);
		mv.setViewName("openMemberDetail");

		return mv;
	}

	// 회원정보수정
	@RequestMapping(value = "/admin/updateMember")
	public ModelAndView updateBoard(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView();

		memberService.updateMember(commandMap.getMap());

		mv.addObject("MEMBER_NUMBER", commandMap.get("MEMBER_NUMBER"));
		mv.setViewName("redirect:/admin/memberList");

		return mv;
	}

	// 회원정보삭제
	@RequestMapping(value = "/admin/deleteMember")
	public ModelAndView deleteMember(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView();

		memberService.deleteMember(commandMap.getMap());
		mv.setViewName("redirect:/admin/memberList");

		return mv;
	}
}