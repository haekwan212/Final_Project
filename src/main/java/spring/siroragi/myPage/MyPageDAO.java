package spring.siroragi.myPage;

import java.util.Map;

import org.springframework.stereotype.Repository;

import spring.kh.siroragi.AbstractDAO;

@Repository("mypageDAO")
public class MyPageDAO extends AbstractDAO {

	//개인 정보 폼으로 이동
	
	//개인 정보 수정
	 void updateMyinfo(Map<String, Object> map) throws Exception{
		 update("mypage.updateMyinfo", map);
		 }
	 
	 void changeMypassword(Map<String, Object> map) throws Exception{
		 update("mypage.changePassword", map);
	 }
	 //마이페이지 정보 불러오기
	 @SuppressWarnings("unchecked")
	 Map<String, Object> myinfoDetail(String id) throws Exception{
		 return (Map<String, Object>)selectOne("mypage.myinfoDetail", id);
	 }
}
