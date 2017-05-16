package spring.siroragi.login;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("loginService")
public class LoginServiceImpl implements LoginService{

	@Resource(name="loginDAO")
	private LoginDAO loginDAO;
	
	@Override
	public Map<String, Object> loginByIdAndPassword(Map<String, Object> map) throws Exception {
		return loginDAO.selectId(map);
	}
}
