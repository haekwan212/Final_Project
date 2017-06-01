package spring.siroragi.adminOrder;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.beans.factory.annotation.Autowired;

@Repository("adminOrderDAO")
public class AdminOrderDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<Map<String, Object>> allOrderList(Map<String, Object> map) throws Exception{
		return sqlSession.selectList("adminOrder.allOrderList",map);
	}
	
	//결제상태변경
	public void updateGoodsPayState(Map<String, Object> map) throws Exception{
		sqlSession.update("adminOrder.updateGoodsPayState",map);
	}
	//상품 구매확정/주문취소/교환,반품 상태변경
	public void updateGoodsState(Map<String, Object> map) throws Exception{
		sqlSession.update("adminOrder.updateGoodsState",map);
	}
	//배송상태 변경
	public void updateDeliveryState(Map<String, Object> map) throws Exception{
		sqlSession.update("adminOrder.updateDeliveryState",map);
	}
}
