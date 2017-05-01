package spring.siroragi.member;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import spring.kh.siroragi.AbstractDAO;



@Repository("memberDAO")
public class MemberDAO extends AbstractDAO {

	SqlSessionTemplate sqlsession;
	//회원 전체목록 불러오기
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectMemberList(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>)selectList("member.selectMemberList", map);
	}
	//회원 검색
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectMemberDetail(Map<String, Object> map) throws Exception{
		return (Map<String, Object>)selectOne("member.selectMemberDetail", map);
	}
	//관리자가 회원 정보 OFF로 수정(회원강제 탈퇴)
	public void deleteMember(Map<String, Object> map) throws Exception{
		update("member.deleteMember", map);
	}
}
