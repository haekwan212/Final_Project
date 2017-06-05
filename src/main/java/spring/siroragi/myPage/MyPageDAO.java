package spring.siroragi.myPage;

import java.util.List;
import java.util.Map;

import org.aspectj.org.eclipse.jdt.internal.codeassist.select.SelectionOnExplicitConstructorCall;
import org.springframework.stereotype.Repository;

import spring.kh.siroragi.AbstractDAO;

@Repository("mypageDAO")
public class MyPageDAO extends AbstractDAO {

	 int selectOtoCount(String mem_num) throws Exception{
		 return (int)selectOne("mypage.selectOtoCount", mem_num);
	 }
	//개인 정보 수정
	 void updateMyinfo(Map<String, Object> map) throws Exception{
		 update("mypage.updateMyinfo", map);
		 }
	 
	 void changeMypassword(Map<String, Object> map) throws Exception{
		 update("mypage.changePassword", map);
	 }
	 
	 void cancle_order(Map<String, Object> map) throws Exception{
		 update("mypage.cancelOrder", map);
	 }
	 
	 void confirm_order(Map<String, Object> map) throws Exception{
		 update("mypage.confirmOrder", map);
	 }
	 void updateReturn(Map<String, Object> map) throws Exception{
		 update("mypage.updateReturn", map);
	 }
	 void updateExchange(Map<String, Object> map) throws Exception{
		 update("mypage.updateExchange", map);
	 }
	 //마이페이지 정보 불러오기
	 @SuppressWarnings("unchecked")
	 Map<String, Object> myinfoDetail(String id) throws Exception{
		 return (Map<String, Object>)selectOne("mypage.myinfoDetail", id);
	 }
	 
	 @SuppressWarnings("unchecked")
	 List<Map<String, Object>> myreviewList(Map<String, Object> map) throws Exception{
		return (List<Map<String,Object>>)selectList("mypage.myreviewList", map);
	 }
	 
	 @SuppressWarnings("unchecked")
	 List<Map<String, Object>> selectReturnList(String mem_num) throws Exception{
		 return (List<Map<String, Object>>)selectList("mypage.selectReturnList", mem_num);
	 }
	 
	 @SuppressWarnings("unchecked")
	 List<Map<String, Object>> selectExchangeList(String mem_num) throws Exception{
		 return (List<Map<String, Object>>)selectList("mypage.selectExchangeList", mem_num);
	 }
	 
	 @SuppressWarnings("unchecked")
	 List<Map<String, Object>> selectOtoList(String mem_num) throws Exception{
		 return (List<Map<String, Object>>)selectList("mypage.selectOtoList", mem_num);
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
