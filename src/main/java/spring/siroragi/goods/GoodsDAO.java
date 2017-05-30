package spring.siroragi.goods;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.kh.siroragi.AbstractDAO;

@Repository("goodsDAO")
public class GoodsDAO extends AbstractDAO{


	@Autowired
	private SqlSessionTemplate sqlSession;

	// 카테고리별 상품 정렬
	public List<Map<String, Object>> goodsCategory(Map<String, Object> map) throws Exception{
		return sqlSession.selectList("goods.goodsCategory",map);
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
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> goodsDetail(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>) selectList("goods.selectOneGoods", map);
	}
	
	//상품 총 판매량 가져오기
	public int countTotalSell(Map<String, Object> map) throws Exception{
		return (int)selectOne("goods.selectOneGoodsSellCount",map);
	}
	
	//상품 이미지 가져오기
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> goodsImage(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>)selectList("goods.selectOneGoodsImage",map);
	}
	
	//코디된 상품 썸네일 이미지 가져오기
	@SuppressWarnings("unchecked")
	public Map<String,Object> relatedGoodsThumbnail(Map<String, Object> map) throws Exception{
		return (Map<String, Object>) selectOne("goods.selectRelatedGoods",map);
	}
	
	//상품 조회수 올리기
	public void goodsCountUp(Map<String, Object> map) throws Exception{
		update("goods.goodsCountUp",map);
	}
	
	//상품 평점 가져오기
	public int goodsAvgGrade(Map<String, Object> map) throws Exception{
		if(selectOne("review.selectGoodsEvgGrade",map) !=null)
		return (int) selectOne("review.selectGoodsEvgGrade",map);
		
		return 0;
	}

}
