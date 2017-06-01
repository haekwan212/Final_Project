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
	public void updateGoodsPayState(Map<String, Object> map) throws Exception{
		adminOrderDAO.updateGoodsPayState(map);
	}

	// 상품 구매확정/주문취소/교환,반품 상태변경
	public void updateGoodsState(Map<String, Object> map) throws Exception{
		adminOrderDAO.updateGoodsState(map);
	}

	// 배송상태 변경
	public void updateDeliveryState(Map<String, Object> map) throws Exception{
		adminOrderDAO.updateDeliveryState(map);
	}

}
