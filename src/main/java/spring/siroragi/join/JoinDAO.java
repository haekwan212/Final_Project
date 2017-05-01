package spring.siroragi.join;

import java.util.Map;

import spring.kh.siroragi.AbstractDAO;




public class JoinDAO extends AbstractDAO {

	//회원가입
	public void insertMember(Map<String, Object> map) throws Exception{
		insert("join.insertMember", map);
	}
}
