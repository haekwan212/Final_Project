package spring.siroragi.adminOrder;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("adminOrderService")
public class AdminOrderServiceImpl implements AdminOrderService{

	@Resource(name="adminOrderDAO")
	private AdminOrderDAO adminOrderDAO;
	
	// 전체 주문리스트
	public List<Map<String, Object>> allOrderList(Map<String, Object> map) throws Exception{
		return adminOrderDAO.allOrderList(map);
	}

}
