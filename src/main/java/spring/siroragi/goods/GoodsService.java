package spring.siroragi.goods;

import java.util.List;
import java.util.Map;

public interface GoodsService {

	// 카테고리별 상품 정렬
	public List<Map<String, Object>> goodsCategory(Map<String, Object> map) throws Exception;
	// 검색 결과에 대한 리스트 호출
	public List<Map<String, Object>> goodsSearch(String isSearch) throws Exception;
	// 카테고리별 인기별(판매량순)순
	public List<Map<String,Object>> goodsRank(String isCategory) throws Exception;
	// 특정조건(가격,색상,소분류) 검색
	public List<Map<String,Object>> goodsCategorySearch(Map<String, Object> map) throws Exception;
	// 낮은가격/높은가격/상품명/리뷰수/평점순/인기순/신상순 정렬	
	// 상품 상세보기 페이지로 이동
	public List<Map<String, Object>> goodsDetail(Map<String, Object> map) throws Exception;
	// 세일카테고리 세일 상품 불러오기
	public List<Map<String,Object>> goodsSale(Map<String, Object> map) throws Exception;
	// 뉴카테고리 뉴 상품 불러오기
	public List<Map<String,Object>> goodsNew(Map<String, Object> map) throws Exception;
	//구매확인
	public String checkBuy(Map<String, Object> map) throws Exception;
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
	
	// 상품 QNA 가져오기
	public List<Map<String, Object>> goodsQna(Map<String, Object> map) throws Exception;
		
}
