package spring.siroragi.goods;

import java.util.List;
import java.util.Map;

public interface GoodsService {

	// 카테고리별 상품 정렬

	// 검색 결과에 대한 리스트 호출
	public List<Map<String, Object>> goodsSearch(String isSearch) throws Exception;
	// 낮은가격/높은가격/상품명/리뷰수/평점순/인기순/신상순 정렬

	// 상품 상세보기 페이지로 이동

	// 코디된 상품 보여주기
}
