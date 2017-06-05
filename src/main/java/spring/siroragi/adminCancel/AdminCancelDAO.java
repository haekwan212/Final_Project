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
	
	//해당 주문에 대한 캔슬있나 확인
	public Map<String, Object> confirmCancel(Map<String, Object> map) throws Exception{
		return sqlSession.selectOne("adminCancel.confirmCancel",map);
	}
	
	//주문취소 목록
	public List<Map<String,Object>> allCancelList(Map<String, Object> map) throws Exception{
		return sqlSession.selectList("adminCancel.allCancelList",map);
	}
	
	//주문반품/교환목록
	public List<Map<String, Object>> allExchangeList(Map<String,Object> map) throws Exception{
		return sqlSession.selectList("adminCancel.allExchangeList",map);
	}
	
	// 주문취소 검색
	public List<Map<String, Object>> allCancelSearch1(Map<String, Object> map) throws Exception{
		return sqlSession.selectList("adminCancel.allCancelSearch1",map);
	}
	public List<Map<String, Object>> allCancelSearch2(Map<String, Object> map) throws Exception{
		return sqlSession.selectList("adminCancel.allCancelSearch2",map);
	}
	public List<Map<String, Object>> allCancelSearch3(Map<String, Object> map) throws Exception{
		return sqlSession.selectList("adminCancel.allCancelSearch3",map);
	}
	public List<Map<String, Object>> allCancelSearch4(Map<String, Object> map) throws Exception{
		return sqlSession.selectList("adminCancel.allCancelSearch4",map);
	}
	
	// 교환/반품 검색
	public List<Map<String, Object>> allExchangeSearch1(Map<String, Object> map) throws Exception{
		return sqlSession.selectList("adminCancel.allExchangeSearch1",map);
	}
	public List<Map<String, Object>> allExchangeSearch2(Map<String, Object> map) throws Exception{
		return sqlSession.selectList("adminCancel.allExchangeSearch2",map);
	}
	public List<Map<String, Object>> allExchangeSearch3(Map<String, Object> map) throws Exception{
		return sqlSession.selectList("adminCancel.allExchangeSearch3",map);
	}
	public List<Map<String, Object>> allExchangeSearch4(Map<String, Object> map) throws Exception{
		return sqlSession.selectList("adminCancel.allExchangeSearch4",map);
	}
	public List<Map<String, Object>> allExchangeSearch5(Map<String, Object> map) throws Exception{
		return sqlSession.selectList("adminCancel.allExchangeSearch5",map);
	}
	

}
