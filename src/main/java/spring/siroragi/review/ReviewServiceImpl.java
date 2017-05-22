package spring.siroragi.review;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService {

	private static final String filePath = "C:\\Java\\App\\SIRORAGI\\src\\main\\webapp\\file\\reviewFile\\";
	
	@Resource(name = "reviewDAO")
	private ReviewDAO reviewDAO;
	
	// 전체 리뷰 불러오기

	// 회원 개인의 리뷰 불러오기

	// 리뷰 코멘트 폼으로 이동

	// 리뷰 코멘트 등록(등록하면서 적립금 주어야함)

	// 리뷰 검색

	// 리뷰 평점 계산

	// 리뷰 상세보기

	// 리뷰 등록
	public void reviewWrite(Map<String, Object> map, HttpServletRequest request) throws Exception {
		reviewDAO.reviewWrite(map);
		
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) request;
		MultipartFile multipartFile=multipartHttpServletRequest.getFile("REVIEW_IMAGE");
		
		Map<String, Object> listMap = new HashMap<String, Object>();
		
		String IMAGE = null;
		String IMAGEExtension = null;
		
		File file = new File(filePath);
		if (file.exists() == false) {
			file.mkdirs(); // 폴더가 존재하지 않으면 폴더 생성
		}
		
		if (multipartFile.getSize() > 0) {
			
			String REVIEW_NUMBER = map.get("REVIEW_NUMBER").toString();
			IMAGEExtension = multipartFile.getOriginalFilename().substring(multipartFile.getOriginalFilename().lastIndexOf("."));
			IMAGE = "REVIEW_" + REVIEW_NUMBER + IMAGEExtension;
			
			file = new File(filePath + IMAGE);
			multipartFile.transferTo(file);

			listMap.put("REVIEW_IMAGE", IMAGE);
			listMap.put("REVIEW_NUMBER", map.get("REVIEW_NUMBER"));
			
			reviewDAO.reviewImageWrite(listMap);
		}
	}

	// 상품에 대한 리뷰 정보 가져오기(글쓴이 이름도 가져와야함)
	public List<Map<String, Object>> goodsReview(Map<String, Object> map) throws Exception{
		return reviewDAO.goodsReview(map);
	}

}
