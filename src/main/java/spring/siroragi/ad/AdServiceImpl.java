package spring.siroragi.ad;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("adService")
public class AdServiceImpl implements AdService {

	@Resource(name = "adDAO")
	private AdDAO adDAO;

	// 메인에서 사용할 광고 불러오기
	@Override
	public List<Map<String, Object>> mainAd(Map<String, Object> map) throws Exception {
		return adDAO.mainAd(map);
	}

	// 광고 내역 불러오기
	@Override
	public List<Map<String, Object>> adList(Map<String, Object> map) throws Exception {
		return adDAO.adList(map);
	}

	// 광고 상세정보
	@Override
	public Map<String, Object> selectAdDetail(Map<String, Object> map) throws Exception {
		return adDAO.selectAdDetail(map);
	}

	// 광고 등록 폼으로 이동

	// 광고 등록
	@Override
	public void adWrite(Map<String, Object> map) throws Exception {
		adDAO.adWrite(map);
		
	}

	// 광고 수정
	@Override
	public void adModify(Map<String, Object> map) throws Exception {
		adDAO.adModify(map);
	}
	
	// 광고 삭제
		@Override
		public void adDelete(Map<String, Object> map) throws Exception {
			adDAO.adDelete(map);
		}

	// 광고 이름으로 검색
	@Override
	public List<Map<String, Object>> searchAdList(Map<String, Object> map) throws Exception {
		return adDAO.searchAdList(map);
	}

}
