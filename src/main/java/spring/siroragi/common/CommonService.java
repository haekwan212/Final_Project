package spring.siroragi.common;

import java.util.List;
import java.util.Map;

public interface CommonService {

	// 메인페이지로 이동

	// 기업 소개로 이동

	// 이용약관으로 이동

	// 개인정보 취급방침으로 이동

	// 이용안내로 이동

	// 제품 카테고리 top 불러오기
	List<Map<String, Object>> listByTop(Map<String, Object> map) throws Exception;

	// 제품 카테고리 OUter 불러오기
	List<Map<String, Object>> listByOut(Map<String, Object> map) throws Exception;

	// 제품 카테고리 Pants 불러오기
	List<Map<String, Object>> listByPan(Map<String, Object> map) throws Exception;

	// 제품 카테고리 ACC 불러오기
	List<Map<String, Object>> listByAcc(Map<String, Object> map) throws Exception;

	// 제품 카테고리 SHOES 불러오기
	List<Map<String, Object>> listByShoes(Map<String, Object> map) throws Exception;

	// Sale기간 지난 물품 정리
	void goodsSale(Map<String, Object> map) throws Exception;

	List<Map<String, Object>> adImages(Map<String, Object> map) throws Exception;

}
