package spring.siroragi.myPage;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("mypageService")
public class MyPageServiceImpl implements MyPageService{

	@Resource(name="mypageDAO")
	private MyPageDAO myPageDAO;
	
	@Override
	public void updateMyinfo(Map<String, Object> map) throws Exception {
		myPageDAO.updateMyinfo(map);
	}
	@Override
	public void changeMypassword(Map<String, Object> map) throws Exception {
		myPageDAO.changeMypassword(map);
		
	}
	@Override
	public Map<String, Object> myinfoDetail(String id) throws Exception {
		return myPageDAO.myinfoDetail(id);
	}
}
