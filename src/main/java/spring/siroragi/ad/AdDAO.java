package spring.siroragi.ad;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("adDAO")
public class AdDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	// 메인에서 사용할 광고 불러오기
	public List<Map<String, Object>> mainAd(Map<String, Object> map) throws Exception {
		return sqlSession.selectList("ad.mainAd", map);
	}

	// 광고 내역 불러오기
	public List<Map<String, Object>> adList(Map<String, Object> map) throws Exception {
		return sqlSession.selectList("ad.adList", map);
	}
	
	// 광고 상세정보
	public Map<String, Object> selectAdDetail(Map<String, Object> map) throws Exception {
		return sqlSession.selectOne("ad.selectAdDetail", map);
	}

	// 광고 등록 폼으로 이동

	// 광고 등록
	public void adWrite(Map<String, Object> map) throws Exception {
		sqlSession.update("ad.adWrite", map);
	}

	// 광고 수정
	public void adModify(Map<String, Object> map) throws Exception {
		sqlSession.update("ad.adModify", map);
	}
	
	// 광고 삭제
		public void adDelete(Map<String, Object> map) throws Exception {
			sqlSession.update("ad.adDelete", map);
		}

	//광고 이름으로 검색
	public List<Map<String, Object>> searchAdList(Map<String, Object> map) {
		return sqlSession.selectList("ad.searchAdList", map);
	}
}
