package spring.siroragi.member;

import java.util.List;
import java.util.Map;

public interface MemberService {

   // 회원 전체목록 불러오기
   List<Map<String, Object>> selectMemberList(Map<String, Object> map) throws Exception;
   // 회원 검색
   Map<String, Object> selectMemberDetail(Map<String, Object> map) throws Exception;
   // 관리자가 회원 정보 OFF로 수정(회원강제 탈퇴)
   void deleteMember(Map<String, Object> map) throws Exception;
}