package spring.siroragi.member;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("memberService")
public class MemberServiceImpl implements MemberService{

      @Resource(name="memberDAO")
      private MemberDAO memberDAO;
      
      @Override
      public List<Map<String, Object>> selectMemberList(Map<String, Object> map) throws Exception {
      return memberDAO.selectMemberList(map);
      }
      
      @Override
      public Map<String, Object> selectMemberDetail(Map<String, Object> map) throws Exception {
      return memberDAO.selectMemberDetail(map);
      }
      
      @Override
      public void deleteMember(Map<String, Object> map) throws Exception {
       memberDAO.deleteMember(map);      
      }
