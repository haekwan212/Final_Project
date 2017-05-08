package spring.siroragi.member;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import spring.kh.siroragi.AbstractDAO;

@Repository("memberDAO")
public class MemberDAO extends AbstractDAO {

	SqlSessionTemplate sqlsession;

	// 회원 전체목록 불러오기
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectMemberList(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("member.selectMemberList", map);
	}

	// 회원 전체목록 불러오기
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectDelMemberList(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("member.selectDelMemberList", map);
	}

	// 회원 검색
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectMemberDetail(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("member.selectMemberDetail", map);
	}

	// 회원정보수정
	public void updateMember(Map<String, Object> map) {
		update("member.updateMember", map);
	}

	// 관리자가 회원 정보 OFF로 수정(회원강제 탈퇴)
	public void deleteMember(Map<String, Object> map) throws Exception {
		update("member.deleteMember", map);
	}

	// 아이디 검색
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> searchMemberList0(Map<String, Object> map, String search) throws Exception {
		return (List<Map<String, Object>>) searchMemberList0("member.searchMemberList0", map, "%" + search + "%");
	}

	// 이름 검색
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> searchMemberList1(Map<String, Object> map, String search) throws Exception {
		return (List<Map<String, Object>>) searchMemberList1("member.searchMemberList1", map, "%" + search + "%");
	}

	// 전화번호 검색
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> searchMemberList2(Map<String, Object> map, String search) throws Exception {
		return (List<Map<String, Object>>) searchMemberList2("member.searchMemberList2", map, "%" + search + "%");
	}

	// 이메일 검색
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> searchMemberList3(Map<String, Object> map, String search) throws Exception {
		return (List<Map<String, Object>>) searchMemberList3("member.searchMemberList3", map, "%" + search + "%");
	}

}
