package spring.siroragi.qna;

import java.util.List;
import java.util.Map;

public interface QnaService {

	// Q&A 전체 글 목록 불러오기
	List<Map<String, Object>> qnaList(Map<String, Object> map) throws Exception;

	// 회원 개인의 Q&A 목록 불러오기
	List<Map<String, Object>> qnaSearchMember(Map<String, Object> map) throws Exception;

	// 상품에 해당하는 Q&A 목록 불러오기
	List<Map<String, Object>> qnaSearchGoods(Map<String, Object> map) throws Exception;

	// Q&A 상세보기
	Map<String, Object> selectQnaDetail(Map<String, Object> map) throws Exception;

	// Q&A 글 조회수 증가
	void selectQnaCount(Map<String, Object> map) throws Exception;

	void updateReplyStep(Map<String, Object> map) throws Exception;

	// Q&A 등록하기
	void insertQna(Map<String, Object> map) throws Exception;

	// Q&A에 답변달기
	void insertQnaReply(Map<String, Object> map) throws Exception;

	List<Map<String, Object>> qnaCategoryList(Map<String, Object> map) throws Exception;

	List<Map<String, Object>> qnaMemberList(Map<String, Object> map) throws Exception;

	void qnaModify(Map<String, Object> map) throws Exception;
	
	void insertModalQna(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> qanlistById(String id) throws Exception;

	// Q&A 등록하기 폼으로 이동

	// Q&A 수정하기

	// Q&A 비밀번호 확인(비회원때문에 필요)

	// Q&A 삭제하기

	// Q&A 검색하기

	// Q&A

	// Q&A
}
