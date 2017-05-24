package spring.siroragi.goods;

import java.util.List;
import java.util.Map;

public interface GoodsService {

	// 카테고리별 상품 정렬

	// 검색 결과에 대한 상품 정렬

	// 낮은가격/높은가격/상품명/리뷰수/평점순/인기순/신상순 정렬

	// 상품 상세보기 페이지로 이동
	public List<Map<String, Object>> goodsDetail(Map<String, Object> map) throws Exception;

	// 상품 총 판매량 구하기
	public int countTotalSell(Map<String, Object> map) throws Exception;

	// 상품 이미지 가져오기
	public List<Map<String, Object>> goodsImage(Map<String, Object> map) throws Exception;

	// 코디된 상품 보여주기
	public List<Map<String, Object>> relatedGoods(Map<String, Object> map) throws Exception;

	// 상품 조회수 올리기
	public void goodsCountUp(Map<String, Object> map) throws Exception;

	// 상품 평점 가져오기
	public int goodsAvgGrade(Map<String, Object> map) throws Exception;
		
}
