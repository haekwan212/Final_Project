package spring.siroragi.login;

import java.util.Map;

import javax.servlet.http.HttpSession;

public interface LoginService {

	// 로그인 폼으로 이동

	// 로그인 하기
	Map<String, Object>  loginByIdAndPassword(Map<String, Object> map) throws Exception;
	// 로그아웃 하기
}
