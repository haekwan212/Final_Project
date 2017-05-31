package spring.siroragi.adminOrder;

import java.util.List;
import java.util.Map;

public interface AdminOrderService {

	//전체 주문리스트
	public List<Map<String, Object>> allOrderList(Map<String, Object> map) throws Exception;
	
	//주문 수정
	
	
	//입금날짜가 지난 주문 삭제
}
