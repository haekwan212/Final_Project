package spring.siroragi.adminOrder;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("adminOrderService")
public class AdminOrderServiceImpl implements AdminOrderService {

	@Resource(name = "adminOrderDAO")
	private AdminOrderDAO adminOrderDAO;

	// 전체 주문리스트
	public List<Map<String, Object>> allOrderList(Map<String, Object> map) throws Exception {
		return adminOrderDAO.allOrderList(map);
	}

	// 결제상태변경
	public void updateGoodsPayState(Map<String, Object> map) throws Exception {
		adminOrderDAO.updateGoodsPayState(map);
	}

	// 상품 구매확정/주문취소/교환,반품 상태변경
	public void updateGoodsState(Map<String, Object> map) throws Exception {
		adminOrderDAO.updateGoodsState(map);
	}

	// 배송상태 변경
	public void updateDeliveryState(Map<String, Object> map) throws Exception {
		adminOrderDAO.updateDeliveryState(map);
	}

	// 검색
	public List<Map<String, Object>> adminOrderSearch0(Map<String, Object> map) throws Exception {
		return adminOrderDAO.adminOrderSearch0(map);
	}
	public List<Map<String, Object>> adminOrderSearch1(Map<String, Object> map) throws Exception {
		return adminOrderDAO.adminOrderSearch1(map);
	}
	public List<Map<String, Object>> adminOrderSearch2(Map<String, Object> map) throws Exception {
		return adminOrderDAO.adminOrderSearch2(map);
	}
	public List<Map<String, Object>> adminOrderSearch4(Map<String, Object> map) throws Exception {
		return adminOrderDAO.adminOrderSearch4(map);
	}
	public List<Map<String, Object>> adminOrderSearch5(Map<String, Object> map) throws Exception {
		return adminOrderDAO.adminOrderSearch5(map);
	}
	public List<Map<String, Object>> adminOrderSearch6(Map<String, Object> map) throws Exception {
		return adminOrderDAO.adminOrderSearch6(map);
	}

	// 주문내역 수정폼(상세보기)
	public List<Map<String, Object>> orderDetail(Map<String, Object> map) throws Exception {
		return adminOrderDAO.orderDetail(map);
	}
	
	//주문 삭제
	public void orderDelete(Map<String, Object> map) throws Exception{
		adminOrderDAO.orderDelete(map);
	}

}
