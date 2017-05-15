package spring.siroragi.login;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import spring.kh.siroragi.AbstractDAO;

@Repository("loginDAO")
public class LoginDAO extends AbstractDAO {

	//로그인 폼으로 이동
	
	//로그인 정보 불러오기
	public List<Map<String, Object>> selectId(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>)selectList("member.selectIdList", map);
	}
	//로그아웃 하기
}
