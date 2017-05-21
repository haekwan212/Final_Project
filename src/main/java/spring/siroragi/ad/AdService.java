package spring.siroragi.ad;

import java.util.List;
import java.util.Map;

public interface AdService {

	// 메인에서 사용할 광고 불러오기
	List<Map<String, Object>> mainAd(Map<String, Object> map) throws Exception;

	// 광고 내역 불러오기
	List<Map<String, Object>> adList(Map<String, Object> map) throws Exception;

	// 광고 상세정보
	Map<String, Object> selectAdDetail(Map<String, Object> map) throws Exception;

	// 광고 등록 폼으로 이동

	// 광고 등록
	void adWrite(Map<String, Object> map) throws Exception;

	// 광고 수정
	void adModify(Map<String, Object> map) throws Exception;
	
	// 광고 삭제
	void adDelete(Map<String, Object> map) throws Exception;

	// 광고 이름으로 검색
	List<Map<String, Object>> searchAdList(Map<String, Object> map) throws Exception;

}
