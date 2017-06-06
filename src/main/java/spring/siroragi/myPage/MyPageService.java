package spring.siroragi.myPage;

import java.util.List;
import java.util.Map;

public interface MyPageService {

	int selectOtoCount(String mem_num) throws Exception;
	// 개인 정보 수정
	int selectBuyCount(String mem_num) throws Exception;
	
	int selectExCount(String mem_num) throws Exception;
	
	int selectReCount(String mem_num) throws Exception;
	
	int selectTotalMoney(String mem_num) throws Exception;
	void updateMyinfo(Map<String, Object> map) throws Exception;
	// 비밀번호 변경
	void changeMypassword(Map<String, Object> map) throws Exception;
	// 내정보 불러오기
	void cancel_order(Map<String, Object> map) throws Exception;
	
	void confirm_order(Map<String, Object> map )throws Exception;
	
	void updateReturn(Map<String, Object> map) throws Exception;
	
	void updateExchange(Map<String, Object> map) throws Exception;
	
	void insertCancelList(Map<String, Object> map) throws Exception;
	
	Map<String, Object> myinfoDetail(String id) throws Exception;
	
	List<Map<String, Object>> selectOtoList(String mem_num) throws Exception;
	
	List<Map<String, Object>>selectOtoComplete(String mem_num) throws Exception;
	
	List<Map<String, Object>>selectReviewList(String mem_num) throws Exception;
	
	List<Map<String, Object>>selectOrderList(String mem_num) throws Exception;
	
	List<Map<String, Object>>selectReturnList(String mem_num) throws Exception;
	
	List<Map<String, Object>>selectExchangeList(String mem_num) throws Exception;
}
