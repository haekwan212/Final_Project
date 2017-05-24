package spring.siroragi.member;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import spring.kh.siroragi.CommandMap;
import spring.kh.siroragi.memberPaging;

@Controller
public class MemberController {

	private int searchNum;
	private int onOff;

	private String isSearch;
	
	// 페이징
	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 7;
	private int blockPage = 5;
	private String pagingHtml;
	private memberPaging page;

	@Resource(name = "memberService")
	private MemberService memberService;

	// 가입한 멤버리스트 불러오기
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

		isSearch = request.getParameter("isSearch");

		if (isSearch != null) {
			
			onOff = Integer.parseInt(request.getParameter("onOff"));
			searchNum = Integer.parseInt(request.getParameter("searchNum"));

			System.out.println("getMap : " + commandMap.getMap());

			if (searchNum == 0) { // 아이디
				memberList = memberService.searchMemberId(commandMap.getMap());
			} else if (searchNum == 1) { // 이름
				memberList = memberService.searchMemberName(commandMap.getMap());
			} else if (searchNum == 2) { // 전화번호
				memberList = memberService.searchMemberPhone(commandMap.getMap());
			} else if (searchNum == 3) { // 이메일
				memberList = memberService.searchMemberEmail(commandMap.getMap());
			}

			totalCount = memberList.size();
			page = new memberPaging(currentPage, totalCount, blockCount, blockPage, "memberList", onOff, searchNum, isSearch);
			pagingHtml = page.getPagingHtml().toString();

			int lastCount = totalCount;

			if (page.getEndCount() < totalCount)
				lastCount = page.getEndCount() + 1;

			memberList = memberList.subList(page.getStartCount(), lastCount);

			mv.addObject("onOff", onOff);
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

			page = new memberPaging(currentPage, totalCount, blockCount, blockPage, "memberList", onOff, searchNum, isSearch);
			pagingHtml = page.getPagingHtml().toString();

			int lastCount = totalCount;

			if (page.getEndCount() < totalCount)
				lastCount = page.getEndCount() + 1;

			memberList = memberList.subList(page.getStartCount(), lastCount);

			mv.addObject("onOff", onOff);
			mv.addObject("totalCount", totalCount);
			mv.addObject("pagingHtml", pagingHtml);
			mv.addObject("currentPage", currentPage);

			mv.addObject("member", memberList);
			mv.setViewName("memberList");

			return mv;
		}
	}

	// 회원 상세정보
	@RequestMapping(value = "/admin/openMemberDetail")
	public ModelAndView openMemberDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView();

		System.out.println("memberDetail : " + commandMap.getMap());
		
		Map<String, Object> member = memberService.selectMemberDetail(commandMap.getMap());

		mv.addObject("member", member);
		mv.setViewName("openMemberDetail");

		return mv;
	}

	// 회원정보 수정
	@RequestMapping(value = "/admin/updateMember")
	public ModelAndView updateMember(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView();

		System.out.println("updateMember : " + commandMap.getMap());

		memberService.updateMember(commandMap.getMap());
		mv.setViewName("redirect:/admin/memberList");

		return mv;
	}

	// 회원정보 삭제
	@RequestMapping(value = "/admin/deleteMember")
	public ModelAndView deleteMember(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView();

		System.out.println("deleteMember : " + commandMap.getMap());
		
		memberService.deleteMember(commandMap.getMap());
		mv.setViewName("redirect:/admin/memberList");

		return mv;
	}

	// 회원포인트 수정
	@RequestMapping(value = "/admin/updatePoint")
	public ModelAndView updatePoint(CommandMap commandMap, HttpServletRequest request) throws Exception {

		ModelAndView mv = new ModelAndView();
		
		System.out.println("updatePoint : " + commandMap.getMap());
		
		memberService.updatePoint(commandMap.getMap());
		mv.setViewName("redirect:/admin/openMemberDetail?MEMBER_NUMBER=" + commandMap.get("MEMBER_NUMBER"));
		
		return mv;
	}
}