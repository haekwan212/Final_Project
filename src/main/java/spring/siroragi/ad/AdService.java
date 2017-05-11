package spring.siroragi.ad;

import java.util.List;
import java.util.Map;

public interface AdService {

	// 메인에서 사용할 광고 불러오기
	List<Map<String, Object>> mainAd(Map<String, Object> map) throws Exception;

	// 광고 내역 불러오기
	List<Map<String, Object>> adList(Map<String, Object> map) throws Exception;

	// 광고 등록 폼
	Map<String, Object> adForm(Map<String, Object> map) throws Exception;

	// 광고 등록
	Map<String, Object> adWrite(Map<String, Object> map) throws Exception;

	// 광고 수정
	void adModify(Map<String, Object> map) throws Exception;

}
