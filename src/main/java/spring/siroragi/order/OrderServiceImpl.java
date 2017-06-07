package spring.siroragi.order;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("orderService")
public class OrderServiceImpl implements OrderService {

	@Resource(name = "orderDAO")
	private OrderDAO orderDAO;

	@Override
	public Map<String, Object> orderMember(Map<String, Object> map) throws Exception {
		return orderDAO.orderMember(map);
	}

	@Override
	public Map<String, Object> orderGoods(Map<String, Object> map) throws Exception {
		return orderDAO.orderGoods(map);
	}

	@Override
	public void insertMemberDelivery(Map<String, Object> map) throws Exception {
		orderDAO.insertMemberDelivery(map);
	}

	@Override
	public void insertOrderList(Map<String, Object> map) throws Exception {
		orderDAO.insertOrderList(map);
	}

	@Override
	public void updatePoint(Map<String, Object> map) throws Exception {
		orderDAO.updatePoint(map);

	}

	@Override
	public void orderGoodsSell(Map<String, Object> map) throws Exception {
		orderDAO.orderGoodsSell(map);
	}

	@Override
	public Map<String, Object> selectCartOrder(Map<String, Object> map) throws Exception {
		return orderDAO.selectCartOrder(map);
	}

	@Override
	public Map<String, Object> sessionCartList(Map<String, Object> map) throws Exception {
		return orderDAO.sessionCartList(map);
	}
	
	@Override
	public List<Map<String, Object>> noMemberOrderList(Map<String, Object> map) throws Exception {
		return orderDAO.noMemberOrderList(map);
	}

}
