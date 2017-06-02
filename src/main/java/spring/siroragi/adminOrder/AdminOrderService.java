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

	// 카테고리 검색
	public List<Map<String, Object>> adminOrderSearch0(Map<String, Object> map) throws Exception;
	public List<Map<String, Object>> adminOrderSearch1(Map<String, Object> map) throws Exception;
	public List<Map<String, Object>> adminOrderSearch2(Map<String, Object> map) throws Exception;
	public List<Map<String, Object>> adminOrderSearch4(Map<String, Object> map) throws Exception;
	public List<Map<String, Object>> adminOrderSearch5(Map<String, Object> map) throws Exception;
	public List<Map<String, Object>> adminOrderSearch6(Map<String, Object> map) throws Exception;

	
	// 주문내역 수정폼(상세보기)
	public List<Map<String, Object>> orderDetail(Map<String, Object> map) throws Exception;
	
	//주문 삭제
	public void orderDelete(Map<String, Object> map) throws Exception;
	
}
