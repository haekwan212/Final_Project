package spring.siroragi.faq;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import spring.siroragi.faq.FaqImageUtils;
import spring.siroragi.faq.FaqDAO;

@Service("faqService")
public class FaqServiceImpl implements FaqService {

	@Resource(name = "faqImageUtils")
	private FaqImageUtils faqImageUtils;

	@Resource(name = "faqDAO")
	private FaqDAO faqDAO;

	// 리스트 불러오기(Admin Page)
	@Override
	public List<Map<String, Object>> faqList(Map<String, Object> map) throws Exception {
		return faqDAO.faqList(map);
	}
			
	// 카테고리 리스트
	@Override
	public List<Map<String, Object>> faqList1(Map<String, Object> map) throws Exception {
		return faqDAO.faqList1(map);

	}

	@Override
	public List<Map<String, Object>> faqList2(Map<String, Object> map) throws Exception {
		return faqDAO.faqList2(map);

	}

	@Override
	public List<Map<String, Object>> faqList3(Map<String, Object> map) throws Exception {
		return faqDAO.faqList3(map);

	}

	@Override
	public List<Map<String, Object>> faqList4(Map<String, Object> map) throws Exception {
		return faqDAO.faqList4(map);

	}

	@Override
	public List<Map<String, Object>> faqList5(Map<String, Object> map) throws Exception {
		return faqDAO.faqList5(map);

	}

	@Override
	public List<Map<String, Object>> faqList6(Map<String, Object> map) throws Exception {
		return faqDAO.faqList6(map);

	}

	@Override
	public List<Map<String, Object>> faqList7(Map<String, Object> map) throws Exception {
		return faqDAO.faqList7(map);

	}

	@Override
	public List<Map<String, Object>> faqList8(Map<String, Object> map) throws Exception {
		return faqDAO.faqList8(map);

	}

	@Override
	public List<Map<String, Object>> faqList9(Map<String, Object> map) throws Exception {
		return faqDAO.faqList9(map);

	}

	@Override
	public List<Map<String, Object>> faqList10(Map<String, Object> map) throws Exception {
		return faqDAO.faqList10(map);

	}

	// 글쓰기
	@Override
	public void faqWrite(Map<String, Object> map, HttpServletRequest request) throws Exception {
		faqDAO.faqWrite(map);
		//map = faqImageUtils.faqImage1(map, request);
		//faqDAO.faqImage1(map);

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
		return faqDAO.searchTitleList(map, isSearch);
	}

	// 글내용 검색
	@Override
	public List<Map<String, Object>> searchContentList(Map<String, Object> map, String isSearch) throws Exception {
		return faqDAO.searchContentList(map, isSearch);
	}

}
