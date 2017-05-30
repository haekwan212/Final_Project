package spring.siroragi.point;

import java.util.Map;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

@Service("pointService")
public class PointServiceImpl implements PointService{

	@Resource(name = "pointDAO")
	private PointDAO pointDAO;
	
	//회원가입시 적립금 부여
	public void joinPoint(Map<String, Object> map) throws Exception{
		pointDAO.joinPoint(map);
	}
}
