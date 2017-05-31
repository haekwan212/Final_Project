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
}
