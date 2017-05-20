package spring.siroragi.review;

import java.util.Map;

import org.springframework.stereotype.Repository;

import spring.kh.siroragi.AbstractDAO;

@Repository("reviewDAO")
public class ReviewDAO extends AbstractDAO{

	//전체 리뷰 불러오기
	
	//회원 개인의 리뷰 불러오기
	
	//리뷰 코멘트 폼으로 이동
	
	//리뷰 코멘트 등록(등록하면서 적립금 주어야함)
	
	//리뷰 검색
	
	//리뷰 평점 계산
	
	//리뷰 상세보기
	
	//리뷰 등록
	public void reviewWrite(Map<String, Object> map) throws Exception{
		insert("review.insertReview",map);
	}
	
	//리뷰에 이미지 등록
	
	//상품에 대한 리뷰 정보 가져오기(글쓴이 이름도 가져와야함)
	
}
