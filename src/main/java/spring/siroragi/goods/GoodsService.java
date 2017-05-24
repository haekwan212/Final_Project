package spring.siroragi.goods;

import java.util.List;
import java.util.Map;

public interface GoodsService {

	// 카테고리별 상품 정렬
	public List<Map<String, Object>> goodsCategory(String isCategory) throws Exception;
	// 검색 결과에 대한 리스트 호출
	public List<Map<String, Object>> goodsSearch(String isSearch) throws Exception;
	// 카테고리별 인기별(판매량순)순
	public List<Map<String,Object>> goodsRank(String isCategory) throws Exception;
	// 특정조건(가격,색상,소분류) 검색
	public List<Map<String,Object>> goodsCategorySearch(Map<String, Object> map) throws Exception;
	// 낮은가격/높은가격/상품명/리뷰수/평점순/인기순/신상순 정렬	
	// 상품 상세보기 페이지로 이동

	// 코디된 상품 보여주기
}
