package spring.siroragi.review;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface ReviewService {

	// 전체 리뷰 불러오기(Admin Page)
	List<Map<String, Object>> reviewList(Map<String, Object> map) throws Exception;

	// 리뷰 삭제(Admin Page)
	void reviewDelete(Map<String, Object> map) throws Exception;
	
	// 회원 개인의 리뷰 불러오기

	// 리뷰 코멘트 폼으로 이동

	// 리뷰 코멘트 등록(등록하면서 적립금 주어야함)

	// 리뷰 검색
	public List<Map<String, Object>> searchReviewList0(Map<String, Object> map) throws Exception;
	public List<Map<String, Object>> searchReviewList1(Map<String, Object> map) throws Exception;
	public List<Map<String, Object>> searchReviewList2(Map<String, Object> map) throws Exception;

	// 리뷰 평점 계산

	// 리뷰 상세보기

	// 리뷰 등록
	public void reviewWrite(Map<String, Object> map, HttpServletRequest request) throws Exception;
	
	public void reviewPoint(Map<String, Object> map, HttpServletRequest request) throws Exception;

	// 상품에 대한 리뷰 정보 가져오기(글쓴이 이름도 가져와야함)
	public List<Map<String, Object>> goodsReview(Map<String, Object> map) throws Exception;

}
