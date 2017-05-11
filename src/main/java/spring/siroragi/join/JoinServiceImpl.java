package spring.siroragi.join;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import spring.kh.siroragi.CommandMap;

@Service("joinService")
public class JoinServiceImpl implements JoinService{

	@Resource(name="joinDAO")
	private JoinDAO joinDAO;
	
	@Override
	public void insertMember(Map<String, Object> map, HttpServletRequest request) throws Exception {
		joinDAO.insertMember(map);
		
	}
}
