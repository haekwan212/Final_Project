package spring.siroragi.qna;

import java.util.List;
import java.util.Map;

public interface QnaService {

	// Q&A 전체 글 목록 불러오기
	List<Map<String, Object>> qnaList(Map<String, Object> map) throws Exception;

	// Q&A 상세보기
	Map<String, Object> selectQnaDetail(Map<String, Object> map) throws Exception;

	// Q&A 글 조회수 증가
	void selectQnaCount(Map<String, Object> map) throws Exception;

	void updateReplyStep(Map<String, Object> map) throws Exception;

	// Q&A 등록하기
	void insertQna(Map<String, Object> map) throws Exception;

	// Q&A에 답변달기
	void insertQnaReply(Map<String, Object> map) throws Exception;
	//qna 수정
	void qnaModify(Map<String, Object> map) throws Exception;
	//qna 팝업창에서 정보 입력
	void insertModalQna(Map<String, Object> map) throws Exception;
		
	List<Map<String, Object>> qnalistById(String id) throws Exception;

	List<Map<String, Object>> qnalistById2(String id) throws Exception;
	
	void updateRepState(Map<String, Object> map) throws Exception;
	// Q&A 수정
	// Q&A 삭제
	void qnaDelete(Map<String, Object> map) throws Exception;

	// 답변 삭제
	void qnaReplyDelete(Map<String, Object> map) throws Exception;

	List<Map<String, Object>> qanlistById(String id) throws Exception;

	// 제목&카테고리 검색
	List<Map<String, Object>> qnaTitleList(Map<String, Object> map) throws Exception;

	// 아이디&카테고리 검색
	List<Map<String, Object>> qnaMemberList(Map<String, Object> map) throws Exception;

	// 아이디 검색
	List<Map<String, Object>> qnaSearchMemberList(Map<String, Object> map) throws Exception;

	// 제목 검색
	List<Map<String, Object>> qnaSearchTitleList(Map<String, Object> map) throws Exception;

	List<Map<String, Object>> qnaSearchMember(Map<String, Object> map) throws Exception;

	int qnaNewAlarm(Map<String, Object> map) throws Exception;

}
