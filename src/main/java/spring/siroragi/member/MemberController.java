package spring.siroragi.member;

import spring.kh.siroragi.CommandMap;
import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {

   @Resource(name="memberService")
   private MemberService memberService;
   //멤버리스트 불러오기
   @RequestMapping(value="/admin/memberList")
   public ModelAndView openMemberList(CommandMap commandMap) throws Exception{
      ModelAndView mv = new ModelAndView();
      mv.setViewName("memberList");
      
      return mv;
   }
   //회원정보 불러오기
   @RequestMapping(value="/member/openMemberDetail")
   public ModelAndView openMemberDetail(CommandMap commandMap) throws Exception{
      ModelAndView mv = new ModelAndView("/member/member");
      
      return mv;
   }
   //회원정보삭제
   @RequestMapping(value="/member/deleteMember")
   public ModelAndView deleteMember(CommandMap commandMap) throws Exception{
      ModelAndView mv = new ModelAndView("/member/member");
      
      memberService.deleteMember(commandMap.getMap());
      return mv;
   }
}