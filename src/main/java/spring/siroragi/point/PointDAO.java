package spring.siroragi.point;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("pointDAO")
public class PointDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//회원가입시 적립금 부여
	public void joinPoint(Map<String, Object> map) throws Exception{
		sqlSession.insert("point.joinPoint",map);
	}
	
	//나의 적립금 내역 불러오기(1년)
	
	//적립금 부여
	
	//적립금 차감
	
	//적립금 부여하기 폼으로 이동
	
	//전체 적립금 금액 계산
	
	//사용한 적립금 금액 계산
	
	//이용가능한 적립금 금액 계산
	
}
