package spring.siroragi.faq;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import spring.kh.siroragi.AbstractDAO;

@Repository("faqDAO")
public class FaqDAO extends AbstractDAO {

	//전체 리스트(Admin Page)
		@SuppressWarnings("unchecked")
		public List<Map<String, Object>> faqList(Map<String, Object> map) throws Exception {
			return (List<Map<String, Object>>) selectList("faq.faqList", map);
		}
		
	//카테고리 리스트
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> faqList1(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("faq.faqList1", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> faqList2(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("faq.faqList2", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> faqList3(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("faq.faqList3", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> faqList4(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("faq.faqList4", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> faqList5(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("faq.faqList5", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> faqList6(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("faq.faqList6", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> faqList7(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("faq.faqList7", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> faqList8(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("faq.faqList8", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> faqList9(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("faq.faqList9", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> faqList10(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("faq.faqList10", map);
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
		return (List<Map<String, Object>>) searchTitleList("faq.searchTitleList", map, isSearch);
	}

	// 글내용 검색
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> searchContentList(Map<String, Object> map, String isSearch) {
		return (List<Map<String, Object>>) searchContentList("faq.searchContentList", map, isSearch);
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
