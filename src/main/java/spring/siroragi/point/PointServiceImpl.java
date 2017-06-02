package spring.siroragi.point;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import spring.siroragi.point.PointDAO;


@Service("pointService")
public class PointServiceImpl implements PointService{

	@Resource(name = "pointDAO")
	private PointDAO pointDAO;
	
	//회원가입시 적립금 부여
	public void joinPoint(Map<String, Object> map) throws Exception{
		pointDAO.joinPoint(map);
	}
	//나의 적립금 내역 불러오기
	public List<Map<String, Object>> myPoint(Map<String, Object> map) throws Exception {
		System.out.println("SERVICE : "+map);
		return pointDAO.myPoint(map);
	}
	// 전체 적립금 금액 계산
	public Map<String, Object> sumPoint(Map<String, Object> map) throws Exception {
		return pointDAO.sumPoint(map);
	}
}
