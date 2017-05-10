package spring.siroragi.member;

import java.util.List;
import java.util.Map;

public interface MemberService {

	// 회원 전체목록 불러오기
	List<Map<String, Object>> selectMemberList(Map<String, Object> map) throws Exception;

	// 회원 상세정보
	Map<String, Object> selectMemberDetail(Map<String, Object> map) throws Exception;

	// 회원정보 수정
	void updateMember(Map<String, Object> map) throws Exception;

	// 관리자가 회원 정보 OFF로 수정(회원강제 탈퇴)
	void deleteMember(Map<String, Object> map) throws Exception;

	// 회원 아이디 검색
	List<Map<String, Object>> searchMemberList0(Map<String, Object> map, int onOff, String isSearch) throws Exception;

	// 회원  이름 검색
	List<Map<String, Object>> searchMemberList1(Map<String, Object> map, int onOff, String isSearch) throws Exception;

	// 회원 전화번호 검색
	List<Map<String, Object>> searchMemberList2(Map<String, Object> map, int onOff, String isSearch) throws Exception;

	// 회원 이메일 검색
	List<Map<String, Object>> searchMemberList3(Map<String, Object> map, int onOff, String isSearch) throws Exception;

}