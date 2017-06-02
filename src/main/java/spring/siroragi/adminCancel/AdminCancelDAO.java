package spring.siroragi.adminCancel;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("adminCancelDAO")
public class AdminCancelDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//주문취소 목록
	public List<Map<String,Object>> allCancelList(Map<String, Object> map) throws Exception{
		return sqlSession.selectList("adminCancel.allCancelList",map);
	}
	
	//주문반품/교환목록
	public List<Map<String, Object>> allExchangeList(Map<String,Object> map) throws Exception{
		return sqlSession.selectList("adminCancel.allExchangeList",map);
	}

}
