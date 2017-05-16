package spring.siroragi.faq;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Component("faqImageUtils")
public class FaqImageUtils {

	private static final String filePath = "C:\\Java\\App\\SIRORAGI\\src\\main\\webapp\\file\\faqFile\\";

	// FAQ 파일 업로드 1
	public Map<String, Object> faqImage1(Map<String, Object> map, HttpServletRequest request)
			throws Exception {

		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) request;

		MultipartFile file = multipartHttpServletRequest.getFile("FAQ_IMAGE1");
		String fileName = "이미지_" + map.get("FAQ_NUMBER").toString();

		String IMAGEExtension = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
		
		File uploadFile = new File(filePath + fileName + IMAGEExtension);

		try {
			file.transferTo(uploadFile);
		} catch (Exception e) {

		}
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		Map<String, Object> listMap = null; 
		
		map.put("FAQ_IMAGE1", fileName+IMAGEExtension);
		
		return map;
	}
	

	/*// FAQ 파일 업로드 2
	public Map<String, Object> faqImage2(Map<String, Object> map1, HttpServletRequest request)
			throws Exception {

		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) request;

		MultipartFile file = multipartHttpServletRequest.getFile("FAQ_IMAGE2");
		String fileName = "이미지_" + map1.get("FAQ_NUMBER").toString();

		String IMAGEExtension = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));

		File uploadFile = new File(filePath + fileName + IMAGEExtension);

		try {
			file.transferTo(uploadFile);
		} catch (Exception e) {

		}

		Map<String, Object> list2 = new HashMap<String, Object>();
		map1.put("FAQ_IMAGE2", fileName + IMAGEExtension);

		return list2;
	}*/

}