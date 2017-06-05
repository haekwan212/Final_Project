package spring.siroragi.header;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.kh.siroragi.AbstractDAO;

@Repository("storeDAO")
public class StoreDAO extends AbstractDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	// 지도에서 불러오기
	public List<Map<String, Object>> storeList(Map<String, Object> map) throws Exception {
		return sqlSession.selectList("store.storeList", map);
	}

	public Map<String, Object> storeSelect(Map<String, Object> map) throws Exception {
		return sqlSession.selectOne("store.storeSelect", map);
	}

}
