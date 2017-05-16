package spring.siroragi.faq;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface FaqService {


	// FAQ 전체 목록 불러오기
	List<Map<String, Object>> faqList(Map<String, Object> map) throws Exception;

	// FAQ 등록
	void faqWrite(Map<String, Object> map, HttpServletRequest request) throws Exception;

	// FAQ 상세보기
	Map<String, Object> faqDetail(Map<String, Object> map) throws Exception;

	// FAQ 수정
	void faqModify(Map<String, Object> map) throws Exception;

	// FAQ 삭제
	void faqDelete(Map<String, Object> map) throws Exception;

	// 글제목 검색
	List<Map<String, Object>> searchTitleList(Map<String, Object> map, String isSearch) throws Exception;

	// 글내용 검색
	List<Map<String, Object>> searchContentList(Map<String, Object> map, String isSearch) throws Exception;

	// 파일첨부

}
