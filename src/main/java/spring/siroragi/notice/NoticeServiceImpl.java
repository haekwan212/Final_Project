package spring.siroragi.notice;

	import java.util.List;
	import java.util.Map;

	import javax.annotation.Resource;

	import org.springframework.stereotype.Service;

	import spring.siroragi.notice.NoticeDAO;

	@Service("noticeService")
	public class NoticeServiceImpl implements NoticeService{
		
		@Resource(name="noticeDAO")
		private NoticeDAO noticeDAO;
		
		@Override
		public List<Map<String, Object>> noticeList(Map<String, Object> map) throws Exception {
			return noticeDAO.noticeList(map);
			
		}

		@Override
		public void noticeWrite(Map<String, Object> map) throws Exception {
			noticeDAO.noticeWrite(map);
		}

		@Override
		public Map<String, Object> noticeDetail(Map<String, Object> map) throws Exception {
			noticeDAO.updateHitCnt(map);
			Map<String, Object> resultMap = noticeDAO.noticeDetail(map);
			return resultMap;
		}

		@Override
		public void noticeModify(Map<String, Object> map) throws Exception{
			noticeDAO.noticeModify(map);
		}

		@Override
		public void noticeDelete(Map<String, Object> map) throws Exception {
			noticeDAO.noticeDelete(map);
		}
		@Override
		public void noticeForm(Map<String, Object> map) throws Exception {
			noticeDAO.noticeForm(map);
		}
		@Override
		public List<Map<String, Object>> noticeSearchTitleList(Map<String, Object> map) throws Exception {
			return noticeDAO.noticeSearchTitleList(map);
		}
		@Override
		public List<Map<String, Object>> noticeSearchContentList(Map<String, Object> map) throws Exception {
			return noticeDAO.noticeSearchContentList(map);
		}
		// 파일첨부1
		public void noticeImage1(Map<String,Object> map) throws Exception {
			noticeDAO.noticeImage1(map);
		}
}