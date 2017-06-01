package spring.siroragi.point;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import spring.kh.siroragi.AbstractDAO;

@Repository("pointDAO")
public class PointDAO extends AbstractDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//회원가입시 적립금 부여
	public void joinPoint(Map<String, Object> map) throws Exception{
		sqlSession.insert("point.joinPoint",map);
	}
	
	//나의 적립금 내역 불러오기
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> myPoint(Map<String, Object> map) throws Exception{
		System.out.println("DAO1 : "+ map);
		return sqlSession.selectList("point.myPoint", map);
	}
	
	//전체 적립금 금액 계산
	@SuppressWarnings("unchecked")
	public Map<String, Object> sumPoint(Map<String,Object> map) throws Exception{
		return sqlSession.selectOne("point.sumPoint",map);
	}
	
	//적립금 부여
	public void upPoint(Map<String, Object> map) throws Exception{
		update("point.upPoint", map);
	}
	
	//적립금 차감
	public void downPoint(Map<String, Object> map) throws Exception{
		update("point.downPoint", map);
	}
	//적립금 부여하기 폼으로 이동
	
	
	//사용한 적립금 금액 계산
	
	//이용가능한 적립금 금액 계산
	
}
