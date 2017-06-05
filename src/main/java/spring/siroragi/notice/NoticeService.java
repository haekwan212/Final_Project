package spring.siroragi.notice;

import java.util.List;
import java.util.Map;

public interface NoticeService {

		// 공지사항 목록 불러오기
		List<Map<String, Object>> noticeList(Map<String, Object> map) throws Exception;

		// 공지사항 등록
		void noticeWrite(Map<String, Object> map) throws Exception;

		// 공지사항 상세보기
		Map<String, Object> noticeDetail(Map<String, Object> map) throws Exception;

		// 공지사항 수정
		void noticeModify(Map<String, Object> map) throws Exception;
		
		// 공지사항 삭제
		void noticeDelete(Map<String, Object> map) throws Exception;


		// 공지사항 폼으로 이동
		void noticeForm(Map<String, Object> map) throws Exception;
		
		// 공지사항 제목 검색
		List<Map<String, Object>> noticeSearchTitleList(Map<String, Object> map) throws Exception;

		// 공지사항 내용 검색
		List<Map<String, Object>> noticeSearchContentList(Map<String, Object> map) throws Exception;

		// 파일첨부1
		public void noticeImage1(Map<String,Object> map) throws Exception;
}
