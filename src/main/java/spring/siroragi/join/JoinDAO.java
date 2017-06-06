package spring.siroragi.join;

import java.util.Map;

import org.springframework.stereotype.Repository;

import spring.kh.siroragi.AbstractDAO;

@Repository("joinDAO")
public class JoinDAO extends AbstractDAO {

	//회원가입
	public void insertMember(Map<String, Object> map) throws Exception{
		insert("join.insertMember", map);
	}
	
	//아이디체크
	public int checkMember(Map<String, Object> map) throws Exception{
		return selectMemberId("join.checkMember", map);
	}
	
	public int checkId(String mem_id) throws Exception{
		return (int)selectOne("join.checkId", mem_id);
	}
}

