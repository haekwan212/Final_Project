package spring.siroragi.adminOrder;

import java.util.List;
import java.util.Map;

public interface AdminOrderService {

	// 전체 주문리스트
	public List<Map<String, Object>> allOrderList(Map<String, Object> map) throws Exception;

	// 주문 수정

	// 입금날짜가 지난 주문 삭제

	// 결제상태변경
	public void updateGoodsPayState(Map<String, Object> map) throws Exception;

	// 상품 구매확정/주문취소/교환,반품 상태변경
	public void updateGoodsState(Map<String, Object> map) throws Exception;

	// 배송상태 변경
	public void updateDeliveryState(Map<String, Object> map) throws Exception;
	
}
