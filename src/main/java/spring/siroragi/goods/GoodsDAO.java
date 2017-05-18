package spring.siroragi.goods;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import spring.kh.siroragi.AbstractDAO;

@Repository("goodsDAO")
public class GoodsDAO extends AbstractDAO{

	//카테고리별 상품 정렬
	
	//검색 결과에 대한 상품 정렬
	
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
	
	//코디된 상품 보여주기

}
