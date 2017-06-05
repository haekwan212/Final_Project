package spring.siroragi.notice;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import spring.kh.siroragi.AbstractDAO;

@Repository("noticeDAO")
public class NoticeDAO extends AbstractDAO{

	//공지사항 목록 불러오기
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> noticeList(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>)selectList("notice.noticeList", map);
	}

	//공지사항 등록
	public void noticeWrite(Map<String, Object> map) throws Exception{
		insert("notice.noticeWrite", map);
	}
	
	//조회수업데이트
	public void updateHitCnt(Map<String, Object> map) throws Exception{
		update("notice.noticeUpdateHitCnt", map);
	}

	//공지사항 상세보기
	@SuppressWarnings("unchecked")
	public Map<String, Object> noticeDetail(Map<String, Object> map) throws Exception{
		return (Map<String, Object>) selectOne("notice.noticeDetail", map);
	}

	//공지사항 수정
	public void noticeModify(Map<String, Object> map) throws Exception{
		update("notice.noticeModify", map);
	}
	
	//공지사항 삭제
	public void noticeDelete(Map<String, Object> map) throws Exception{
		update("notice.noticeDelete", map);
	}


	
	//공지사항 폼으로 이동
	public void noticeForm(Map<String, Object> map) throws Exception{
		update("notice.noticeForm", map);
	}
	// 제목 검색
	public List<Map<String, Object>> noticeSearchTitleList(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>)selectList("notice.noticeSearchTitleList", map);
		}
	//내용 검색
	public List<Map<String, Object>> noticeSearchContentList(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>)selectList("notice.noticeSearchContentList", map);
		}
	// 파일첨부1
	public void noticeImage1(Map<String,Object> map) throws Exception {
		update("notice.noticeImage1", map);
	}
	
}
	
