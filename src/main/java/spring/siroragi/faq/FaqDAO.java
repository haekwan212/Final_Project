package spring.siroragi.faq;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import spring.kh.siroragi.AbstractDAO;

@Repository("faqDAO")
public class FaqDAO extends AbstractDAO {

	@SuppressWarnings("unchecked")
	//FAQ리스트
	public List<Map<String, Object>> faqList(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("faq.faqList", map);
	}

	//FAQ등록
	public void faqWrite(Map<String, Object> map) throws Exception {
		insert("faq.faqWrite", map);
	}

	//FAQ조회수
	public void updateHitCnt(Map<String, Object> map) throws Exception {
		update("faq.updateHitCnt", map);
	}

	//FAQ상세보기
	@SuppressWarnings("unchecked")
	public Map<String, Object> faqDetail(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("faq.faqDetail", map);
	}

	//FAQ수정
	public void faqModify(Map<String, Object> map) throws Exception {
		update("faq.faqModify", map);
	}

	//FAQ삭제
	public void faqDelete(Map<String, Object> map) throws Exception {
		delete("faq.faqDelete", map);
	}

	/*//FAQ파일첨부
	public void insertFile(Map<String, Object> map) throws Exception {
		insert("faq.insertFile", map);
	}

	@SuppressWarnings("unchecked")
	//다중첨부
	public List<Map<String, Object>> selectFileList(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("faq.selectFileList", map);
	}

	//첨부파일 삭제
	public void deleteFileList(Map<String, Object> map) throws Exception {
		update("faq.deleteFileList", map);
	}
	
	//첨부파일 수정
	public void updateFile(Map<String, Object> map) throws Exception {
		update("faq.updateFile", map);
	}*/

	

	// FAQ 등록 폼으로 이동

	// FAQ 등록

	// FAQ 수정

	// FAQ 상세보기

	// FAQ 삭제

	// FAQ 검색
	
	
	
	
	
	
	
}
