package spring.siroragi.faq;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import spring.kh.siroragi.AbstractDAO;

@Repository("faqDAO")
public class FaqDAO extends AbstractDAO {

	@SuppressWarnings("unchecked")
	// FAQ리스트
	public List<Map<String, Object>> faqList(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("faq.faqList", map);
	}

	// FAQ등록
	public void faqWrite(Map<String, Object> map) throws Exception {
		insert("faq.faqWrite", map);
	}

	// FAQ조회수
	public void updateHitCnt(Map<String, Object> map) throws Exception {
		update("faq.updateHitCnt", map);
	}

	// FAQ상세보기
	@SuppressWarnings("unchecked")
	public Map<String, Object> faqDetail(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("faq.faqDetail", map);
	}

	// FAQ수정
	public void faqModify(Map<String, Object> map) throws Exception {
		update("faq.faqModify", map);
	}

	// FAQ삭제
	public void faqDelete(Map<String, Object> map) throws Exception {
		delete("faq.faqDelete", map);
	}

	// 글제목 검색
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> searchTitleList(Map<String, Object> map, String isSearch) {
		return (List<Map<String, Object>>) searchTitleList("faq.searchTitleList", map, "%" + isSearch + "%");
	}

	// 글내용 검색
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> searchContentList(Map<String, Object> map, String isSearch) {
		return (List<Map<String, Object>>) searchContentList("faq.searchContentList", map, "%" + isSearch + "%");
	}


	// FAQ파일첨부1
	public void faqImage1(Map<String,Object> map) throws Exception {
		update("faq.faqImage1", map);
	}

	/*// FAQ파일첨부2
	public void faqImage2(Map<String, Object> map) throws Exception {
		update("faq.faqImage2", map);
	}
*/
	
}
