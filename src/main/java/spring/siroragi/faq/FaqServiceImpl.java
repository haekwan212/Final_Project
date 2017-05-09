package spring.siroragi.faq;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

//import first.common.util.FileUtils;
import spring.siroragi.faq.FaqDAO;

@Service("faqService")
public class FaqServiceImpl implements FaqService {

	//@Resource(name = "fileUtils")
	//private FileUtils fileUtils;

	@Resource(name = "faqDAO")
	private FaqDAO faqDAO;

	//리스트
	@Override
	public List<Map<String, Object>> faqList(Map<String, Object> map) throws Exception {
		return faqDAO.faqList(map);

	}
	
	//글쓰기
	@Override
	public void faqWrite(Map<String, Object> map, HttpServletRequest request) throws Exception {
		faqDAO.faqWrite(map);

		//List<Map<String, Object>> list = fileUtils.parseInsertFileInfo(map, request);
	//	for (int i = 0, size = list.size(); i < size; i++) {
		//	faqDAO.insertFile(list.get(i));
		// }
	}

	//상세보기
	@Override
	public Map<String, Object> faqDetail(Map<String, Object> map) throws Exception {
		faqDAO.updateHitCnt(map);
		Map<String, Object> resultMap = new HashMap<String, Object>();
		Map<String, Object> tempMap = faqDAO.faqDetail(map);
		resultMap.put("map", tempMap);

		/*List<Map<String, Object>> list = faqDAO.selectFileList(map);
		resultMap.put("list", list);*/

		return resultMap;
	}

	//수정하기
	@Override
	public void faqModify(Map<String, Object> map, HttpServletRequest request) throws Exception {
		faqDAO.faqModify(map);

		//faqDAO.deleteFileList(map);
		//List<Map<String, Object>> list = fileUtils.parseUpdateFileInfo(map, request);
		//Map<String, Object> tempMap = null;
		//for (int i = 0, size = list.size(); i < size; i++) {
		//	tempMap = list.get(i);
		//	if (tempMap.get("IS_NEW").equals("Y")) {
		//		faqDAO.insertFile(tempMap);
		//	} else {
		//		faqDAO.updateFile(tempMap);
		//	}
		// }
	}

	//삭제하기
	@Override
	public void faqDelete(Map<String, Object> map) throws Exception {
		faqDAO.faqDelete(map);
	}
	
	
	
	
	
}
