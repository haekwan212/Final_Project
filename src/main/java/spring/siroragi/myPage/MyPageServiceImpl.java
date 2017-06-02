package spring.siroragi.myPage;

import java.util.List;
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
	
	@Override
	public List<Map<String, Object>> selectOtoList(String mem_num) throws Exception {
		return myPageDAO.selectOtoList(mem_num);
	}
	
	@Override
	public int selectOtoCount(String mem_num) throws Exception {
		return myPageDAO.selectOtoCount(mem_num);
	}
	
	@Override
	public List<Map<String, Object>> selectOtoComplete(String mem_num) throws Exception {
		return myPageDAO.selectOtoComplete(mem_num);
	}
	
	@Override
	public List<Map<String, Object>> selectReviewList(String mem_num) throws Exception {
		return myPageDAO.selectReviewList(mem_num);
	}
	
	@Override
	public List<Map<String, Object>> selectOrderList(String mem_num) throws Exception {
		return (List<Map<String, Object>>)myPageDAO.selectOrderlist(mem_num);
	}
}
