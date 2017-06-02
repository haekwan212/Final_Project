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
	
	//검색
	public List<Map<String,Object>> adminOrderSearch0(Map<String, Object> map) throws Exception{
		return sqlSession.selectList("adminOrder.adminOrderSearch0",map);
	}
	public List<Map<String,Object>> adminOrderSearch1(Map<String, Object> map) throws Exception{
		return sqlSession.selectList("adminOrder.adminOrderSearch1",map);
	}
	public List<Map<String,Object>> adminOrderSearch2(Map<String, Object> map) throws Exception{
		return sqlSession.selectList("adminOrder.adminOrderSearch2",map);
	}
	public List<Map<String,Object>> adminOrderSearch4(Map<String, Object> map) throws Exception{
		return sqlSession.selectList("adminOrder.adminOrderSearch4",map);
	}
	public List<Map<String,Object>> adminOrderSearch5(Map<String, Object> map) throws Exception{
		return sqlSession.selectList("adminOrder.adminOrderSearch5",map);
	}
	public List<Map<String,Object>> adminOrderSearch6(Map<String, Object> map) throws Exception{
		return sqlSession.selectList("adminOrder.adminOrderSearch6",map);
	}
	
	//주문내역 상세보기
	public List<Map<String, Object>> orderDetail(Map<String, Object> map) throws Exception{
		return sqlSession.selectList("adminOrder.orderDetail",map);
	}
	
	//주문 삭제
	public void orderDelete(Map<String, Object> map) throws Exception{
		sqlSession.delete("adminOrder.orderDelete",map);
	}
	
}
