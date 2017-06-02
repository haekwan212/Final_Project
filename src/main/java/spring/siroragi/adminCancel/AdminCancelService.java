package spring.siroragi.adminCancel;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface AdminCancelService {

	// 주문취소 목록
	public List<Map<String, Object>> allCancelList(Map<String, Object> map) throws Exception;

	// 주문반품/교환목록
	public List<Map<String, Object>> allExchangeList(Map<String,Object> map) throws Exception;
}
