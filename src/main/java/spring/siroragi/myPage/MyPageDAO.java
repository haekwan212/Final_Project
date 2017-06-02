package spring.siroragi.myPage;

import java.util.List;
import java.util.Map;

import org.aspectj.org.eclipse.jdt.internal.codeassist.select.SelectionOnExplicitConstructorCall;
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
	 
	 @SuppressWarnings("unchecked")
	 List<Map<String, Object>> myreviewList(Map<String, Object> map) throws Exception{
		return (List<Map<String,Object>>)selectList("mypage.myreviewList", map);
	 }
	 
	 //마이페이지 정보 불러오기
	 @SuppressWarnings("unchecked")
	 Map<String, Object> myinfoDetail(String id) throws Exception{
		 return (Map<String, Object>)selectOne("mypage.myinfoDetail", id);
	 }
	 
	 @SuppressWarnings("unchecked")
	 List<Map<String, Object>> selectOtoList(String mem_num) throws Exception{
		 return (List<Map<String, Object>>)selectList("mypage.selectOtoList", mem_num);
	 }
	 
	 int selectOtoCount(String mem_num) throws Exception{
		 return (int)selectOne("mypage.selectOtoCount", mem_num);
	 }
	 
	 @SuppressWarnings("unchecked")
	 List<Map<String, Object>> selectOtoComplete(String mem_num) throws Exception{
		 return (List<Map<String, Object>>)selectList("mypage.selectOtoComplete", mem_num);
	 }
	 @SuppressWarnings("unchecked")
	 List<Map<String, Object>> selectReviewList(String mem_num) throws Exception{
		 return (List<Map<String, Object>>)selectList("mypage.selectReviewList", mem_num);
	 }
	 
	 @SuppressWarnings("unchecked")
	 List<Map<String, Object>> selectOrderlist(String mem_num) throws Exception{
		 return (List<Map<String, Object>>)selectList("mypage.selectOrderList", mem_num);
	 }
}
