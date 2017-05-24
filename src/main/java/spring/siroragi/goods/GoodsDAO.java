package spring.siroragi.goods;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("goodsDAO")
public class GoodsDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	// 카테고리별 상품 정렬(OUTER)
	public List<Map<String, Object>> goodsCategory(String isCategory) throws Exception{
		return sqlSession.selectList("goods.goodsOuter",isCategory);
	}
	
	//검색 결과에 대한 리스트 호출
	public List<Map<String, Object>> goodsSearch(String isSearch) throws Exception {
		return sqlSession.selectList("goods.goodsSearch",isSearch);
	}
	
	// 카테고리별 인기별(판매량순)순
	public List<Map<String, Object>> goodsRank(String isCategory) throws Exception {
		return sqlSession.selectList("goods.goodsRank",isCategory);
	}
	// 특정가격 검색
	public List<Map<String, Object>> goodsCategorySearch(Map<String, Object> map) throws Exception {
		return sqlSession.selectList("goods.goodsCategorySearch",map);
	}
	
	
	//낮은가격/높은가격/상품명/리뷰수/평점순/인기순/신상순 정렬
	
	//상품 상세보기 페이지로 이동
	
	//코디된 상품 보여주기

}
