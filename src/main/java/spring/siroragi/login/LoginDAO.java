package spring.siroragi.login;


import java.util.Map;

import org.springframework.stereotype.Repository;

import spring.kh.siroragi.AbstractDAO;

@Repository("loginDAO")
public class LoginDAO extends AbstractDAO {

	//로그인 폼으로 이동
	
	//로그인 정보 불러오기
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectId(Map<String, Object> map) throws Exception{
		return (Map<String, Object>)selectOne("login.loginByIdAndPassword", map);
	}
	//로그아웃 하기
	
	}

