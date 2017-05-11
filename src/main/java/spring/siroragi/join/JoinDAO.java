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
}

