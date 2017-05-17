package spring.siroragi.faq;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import spring.siroragi.faq.FaqImageUtils;
import spring.siroragi.faq.FaqDAO;

@Service("faqService")
public class FaqServiceImpl implements FaqService {

	@Resource(name = "faqImageUtils")
	private FaqImageUtils faqImageUtils;

	@Resource(name = "faqDAO")
	private FaqDAO faqDAO;

	// 리스트
	@Override
	public List<Map<String, Object>> faqList(Map<String, Object> map) throws Exception {
		return faqDAO.faqList(map);

	}

	// 글쓰기
	@Override
	public void faqWrite(Map<String, Object> map, HttpServletRequest request) throws Exception {
		faqDAO.faqWrite(map);
		
		System.out.println(map.get("FAQ_IMAGE1"));
		
		if (map.get("FAQ_IMAGE1") != null) {
			map = faqImageUtils.faqImage1(map, request);
			faqDAO.faqImage1(map);
			
		}

	}

	// 상세보기
	@Override
	public Map<String, Object> faqDetail(Map<String, Object> map) throws Exception {
		faqDAO.updateHitCnt(map);
		Map<String, Object> resultMap = new HashMap<String, Object>();
		Map<String, Object> tempMap = faqDAO.faqDetail(map);
		resultMap.put("map", tempMap);

		/*
		 * List<Map<String, Object>> list = faqDAO.selectFileList(map);
		 * resultMap.put("list", list);
		 */

		return resultMap;
	}

	// 수정하기
	@Override
	public void faqModify(Map<String, Object> map) throws Exception {
		faqDAO.faqModify(map);

		// faqDAO.deleteFileList(map);
		// List<Map<String, Object>> list = fileUtils.parseUpdateFileInfo(map,
		// request);
		// Map<String, Object> tempMap = null;
		// for (int i = 0, size = list.size(); i < size; i++) {
		// tempMap = list.get(i);
		// if (tempMap.get("IS_NEW").equals("Y")) {
		// faqDAO.insertFile(tempMap);
		// } else {
		// faqDAO.updateFile(tempMap);
		// }
		// }
	}

	// 삭제하기
	@Override
	public void faqDelete(Map<String, Object> map) throws Exception {
		faqDAO.faqDelete(map);
	}

	// 글제목 검색
	@Override
	public List<Map<String, Object>> searchTitleList(Map<String, Object> map, String isSearch) throws Exception {
		return faqDAO.searchTitleList(map, "%" + isSearch + "%");
	}

	// 글내용 검색
	@Override
	public List<Map<String, Object>> searchContentList(Map<String, Object> map, String isSearch) throws Exception {
		return faqDAO.searchContentList(map, "%" + isSearch + "%");
	}

}
