package spring.siroragi.adminCancel;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface AdminCancelService {

	//해당 주문에 대한 캔슬있나 확인
	public Map<String, Object> confirmCancel(Map<String, Object> map) throws Exception;
	
	// 주문취소 목록
	public List<Map<String, Object>> allCancelList(Map<String, Object> map) throws Exception;

	// 주문반품/교환목록
	public List<Map<String, Object>> allExchangeList(Map<String,Object> map) throws Exception;
	
	// 주문취소 검색
	public List<Map<String, Object>> allCancelSearch1(Map<String, Object> map) throws Exception;
	public List<Map<String, Object>> allCancelSearch2(Map<String, Object> map) throws Exception;
	public List<Map<String, Object>> allCancelSearch3(Map<String, Object> map) throws Exception;
	public List<Map<String, Object>> allCancelSearch4(Map<String, Object> map) throws Exception;
		
	// 교환/반품 검색
	public List<Map<String, Object>> allExchangeSearch1(Map<String, Object> map) throws Exception;
	public List<Map<String, Object>> allExchangeSearch2(Map<String, Object> map) throws Exception;
	public List<Map<String, Object>> allExchangeSearch3(Map<String, Object> map) throws Exception;
	public List<Map<String, Object>> allExchangeSearch4(Map<String, Object> map) throws Exception;
	public List<Map<String, Object>> allExchangeSearch5(Map<String, Object> map) throws Exception;
}
