package spring.siroragi.point;

import java.util.List;
import java.util.Map;

public interface PointService {

	//회원가입시 적립금 부여
	public void joinPoint(Map<String, Object> map) throws Exception;
	
	//나의 적립금 내역 불러오기
	public List<Map<String, Object>> myPoint(Map<String, Object> map) throws Exception;
	
	// 전체 적립금 금액 계산
	public Map<String,Object> sumPoint(Map<String, Object> map) throws Exception;
		
	// 적립금 부여

	// 적립금 차감

	// 적립금 부여하기 폼으로 이동

	
	// 사용한 적립금 금액 계산

	// 이용가능한 적립금 금액 계산
}
