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
	public int selectOtoCount(String mem_num) throws Exception {
		return myPageDAO.selectOtoCount(mem_num);
	}
	@Override
	public int selectBuyCount(String mem_num) throws Exception {
		// TODO Auto-generated method stub
		return myPageDAO.selectBuyCount(mem_num);
	}
	@Override
	public int selectExCount(String mem_num) throws Exception {
		// TODO Auto-generated method stub
		return myPageDAO.selectExCount(mem_num);
	}
	@Override
	public int selectReCount(String mem_num) throws Exception {
		// TODO Auto-generated method stub
		return myPageDAO.selectReCount(mem_num);
	}
	@Override
	public int selectTotalMoney(String mem_num) throws Exception {
		return myPageDAO.selectTotalMoney(mem_num);
	}
	@Override
	public void updateMyinfo(Map<String, Object> map) throws Exception {
		myPageDAO.updateMyinfo(map);
	}
	@Override
	public void changeMypassword(Map<String, Object> map) throws Exception {
		myPageDAO.changeMypassword(map);	
	}
	@Override
	public void cancel_order(Map<String, Object> map) throws Exception {
		myPageDAO.cancle_order(map);
	}
	
	@Override
	public void confirm_order(Map<String, Object> map) throws Exception {
		myPageDAO.confirm_order(map);	
	}
	@Override
	public void updateReturn(Map<String, Object> map) throws Exception {
		myPageDAO.updateReturn(map);
	}
	@Override
	public void updateExchange(Map<String, Object> map) throws Exception {
		myPageDAO.updateExchange(map);
	}
	@Override
	public void insertCancelList(Map<String, Object> map) throws Exception {
		myPageDAO.insertCancelList(map);	
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
	@Override
	public List<Map<String, Object>> selectReturnList(String mem_num) throws Exception {
		return myPageDAO.selectReturnList(mem_num)
				;
	}
	@Override
	public List<Map<String, Object>> selectExchangeList(String mem_num) throws Exception {
		return myPageDAO.selectExchangeList(mem_num)
				;
	}
}
