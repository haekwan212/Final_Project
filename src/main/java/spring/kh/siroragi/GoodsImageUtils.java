package spring.kh.siroragi;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Component("goodsImageUtils")
public class GoodsImageUtils {

	private static final String filePath = "C:\\Java\\App\\SIRORAGI\\src\\main\\webapp\\file\\goodsFile\\";

	// 상품 썸네일 이미지 등록
	public Map<String, Object> goodsThumbnail(Map<String, Object> map, HttpServletRequest request) throws Exception {

		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) request;

		if (multipartHttpServletRequest.getFile("GOODS_THUMBNAIL") != null) {
			MultipartFile file = multipartHttpServletRequest.getFile("GOODS_THUMBNAIL");
			String fileName = "Thumbnail_" + map.get("GOODS_NUMBER").toString();

			String IMAGEExtension = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));

			File uploadFile = new File(filePath + fileName + IMAGEExtension);

			try {
				file.transferTo(uploadFile);
			} catch (Exception e) {

			}

			map.put("GOODS_THUMBNAIL", fileName + IMAGEExtension);
		}
		return map;
	}

	// 상품이미지 등록
	public List<Map<String, Object>> parseInsertFileInfo(Map<String, Object> map, HttpServletRequest request)
			throws Exception {
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) request;

		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		Map<String, Object> listMap = null;

		if (multipartHttpServletRequest.getFiles("IMAGE") != null) {
			List<MultipartFile> imageFile = multipartHttpServletRequest.getFiles("IMAGE");

			// System.out.println("IMAGE : "+imageFile);
			// Iterator<String> iterator =
			// multipartHttpServletRequest.getFileNames();

			// MultipartFile multipartFile = null;
			String IMAGE = null;
			String IMAGEExtension = null;

			String GOODS_NUMBER = map.get("GOODS_NUMBER").toString();

			File file = new File(filePath);
			if (file.exists() == false) {
				file.mkdirs(); // 폴더가 존재하지 않으면 폴더 생성
			}

			for (MultipartFile multipartFile : imageFile) {
				// System.out.println("IMAGE File : "+multipartFile);
				if (multipartFile.isEmpty() == false) {
					IMAGEExtension = multipartFile.getOriginalFilename()
							.substring(multipartFile.getOriginalFilename().lastIndexOf("."));
					IMAGE = "IMAGE_" + GOODS_NUMBER + "_" + System.currentTimeMillis() + IMAGEExtension;

					file = new File(filePath + IMAGE);
					multipartFile.transferTo(file);

					listMap = new HashMap<String, Object>();
					listMap.put("IMAGE", IMAGE);

					listMap.put("GOODS_NUMBER", map.get("GOODS_NUMBER"));
					list.add(listMap);

				}

			}

			return list;
		} else {
			return list;
		}

		/*
		 * while(iterator.hasNext()){ multipartFile =
		 * multipartHttpServletRequest.getFile(iterator.next());
		 * if(multipartFile.isEmpty() == false){
		 * 
		 * //확장자 구하기 IMAGEExtension =
		 * multipartFile.getOriginalFilename().substring(multipartFile.
		 * getOriginalFilename().lastIndexOf(".")); IMAGE =
		 * "IMAGE_"+GOODS_NUMBER+"_"+System.currentTimeMillis()+IMAGEExtension;
		 * 
		 * 
		 * file = new File(filePath + IMAGE); multipartFile.transferTo(file);
		 * 
		 * listMap = new HashMap<String,Object>(); listMap.put("GOODS_NUMBER",
		 * map.get("GOODS_NUMBER")); listMap.put("IMAGE", IMAGE);
		 * list.add(listMap); } } return list;
		 */
	}

	// 썸네일 이미지 수정
	public Map<String, Object> parseUpdateThumbImage(Map<String, Object> map, HttpServletRequest request)
			throws Exception {

		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) request;
		MultipartFile file = multipartHttpServletRequest.getFile("GOODS_THUMBNAIL");

		String fileName = "Thumbnail_" + map.get("GOODS_NUMBER").toString();

		String IMAGEExtension = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));

		File uploadFile = new File(filePath + fileName + IMAGEExtension);

		if (map.get("ORIIGINAL_THUMBNAIL") != null) {
			String orgFileName = (String) map.get("ORIGINAL_THUMBNAIL");
			File removeFile = new File(filePath + orgFileName);
			removeFile.delete();
		}

		try {
			file.transferTo(uploadFile);
		} catch (Exception e) {
		}

		map.put("GOODS_THUMBNAIL", fileName + IMAGEExtension);

		System.out.println("썸네일이미지 수정완료");
		return map;
	}

	// 이미지 수정
	public List<Map<String, Object>> parseUpdateImages(Map<String, Object> map, HttpServletRequest request)
			throws Exception {
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) request;

		// System.out.println("IMAGE : "+imageFile);
		// Iterator<String> iterator =
		// multipartHttpServletRequest.getFileNames();

		// MultipartFile multipartFile = null;
		String IMAGEExtension = null;

		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		Map<String, Object> listMap = null;
		MultipartFile multipartFile = null;

		File file = new File(filePath);
		if (file.exists() == false) {
			file.mkdirs(); // 폴더가 존재하지 않으면 폴더 생성
		}

		String[] orgImage = request.getParameterValues("ORIGINAL_IMAGE");
		//System.out.println("기존 이미지 배열 : " + orgImage);
		// 기존파일 수정 및 삭제
		for (String a : orgImage) { // 전송된 기존파일 정보가 있으면
			//System.out.println("기존 이미지 배열에서 꺼내옴 : " + a);
			//System.out.println("기존 이미지 배열에서 꺼내옴2 : " + request.getParameter(a));
			//System.out.println("기존 이미지 배열에서 꺼내옴3 : " + multipartHttpServletRequest.getFile("MODIFY_IMAGE_" + a));
			if (request.getParameter(a) != null) { //
				// 기존파일이 수정되었으면 밑의 if문으로들어가고, 아니면 그냥 지나감
				if (multipartHttpServletRequest.getFile("MODIFY_IMAGE_" + a).getSize() > 0) {
					
					multipartFile=multipartHttpServletRequest.getFile("MODIFY_IMAGE_" + a);
					//System.out.println("이미지 " + a + "수정!");
					File removeFile = new File(filePath + a);
					removeFile.delete();

					IMAGEExtension = multipartFile.getOriginalFilename().substring(multipartFile.getOriginalFilename().lastIndexOf("."));
					//System.out.println("확장자 : " + IMAGEExtension);
					file = new File(filePath + a.substring(0, a.lastIndexOf(".")) + IMAGEExtension);
					multipartFile.transferTo(file);
					
					//System.out.println("저장될 파일 이름 : "+a.lastIndexOf(".") + IMAGEExtension);
					listMap = new HashMap<String, Object>();
					listMap.put("IMAGE", a.substring(0, a.lastIndexOf(".")) + IMAGEExtension);
					listMap.put("ORIGINAL_IMAGE", a);

					listMap.put("GOODS_NUMBER", map.get("GOODS_NUMBER"));
					list.add(listMap);
					

				}
			} else { // 기존파일의 정보가 없으면
				File removeFile = new File(filePath + a);
				//System.out.println("MODIFY_IMAGE_" + a + "삭제");
				removeFile.delete();
			}
		}

		return list;
	}

	// 썸네일이미지 삭제
	public void parseDeleteThumbnail(Map<String, Object> map) throws Exception {

		if (map.get("GOODS_THUMBNAIL") != null) {
			File removeFile = new File(filePath + map.get("GOODS_THUMBNAIL"));
			removeFile.delete();
		}

	}
	
	//이미지 삭제
	public void parseDeleteImages(Map<String, Object> map) throws Exception {

		if (map.get("IMAGE") != null) {
				File removeFile = new File(filePath + map.get("IMAGE"));
				removeFile.delete();
			}
		
	}

	/*
	 * public List<Map<String, Object>> parseUpdateFileInfo(Map<String, Object>
	 * map, HttpServletRequest request) throws Exception{
	 * MultipartHttpServletRequest multipartHttpServletRequest =
	 * (MultipartHttpServletRequest)request; Iterator<String> iterator =
	 * multipartHttpServletRequest.getFileNames();
	 * 
	 * MultipartFile multipartFile = null; String originalFileName = null;
	 * String originalFileExtension = null; String storedFileName = null;
	 * 
	 * List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
	 * Map<String, Object> listMap = null;
	 * 
	 * String boardIdx = (String)map.get("IDX"); String requestName = null;
	 * String idx = null;
	 * 
	 * 
	 * while(iterator.hasNext()){ multipartFile =
	 * multipartHttpServletRequest.getFile(iterator.next());
	 * if(multipartFile.isEmpty() == false){ originalFileName =
	 * multipartFile.getOriginalFilename(); originalFileExtension =
	 * originalFileName.substring(originalFileName.lastIndexOf("."));
	 * storedFileName = CommonUtils.getRandomString() + originalFileExtension;
	 * 
	 * multipartFile.transferTo(new File(filePath + storedFileName));
	 * 
	 * listMap = new HashMap<String,Object>(); listMap.put("IS_NEW", "Y");
	 * listMap.put("BOARD_IDX", boardIdx); listMap.put("ORIGINAL_FILE_NAME",
	 * originalFileName); listMap.put("STORED_FILE_NAME", storedFileName);
	 * listMap.put("FILE_SIZE", multipartFile.getSize()); list.add(listMap); }
	 * else{ requestName = multipartFile.getName(); idx =
	 * "IDX_"+requestName.substring(requestName.indexOf("_")+1);
	 * if(map.containsKey(idx) == true && map.get(idx) != null){ listMap = new
	 * HashMap<String,Object>(); listMap.put("IS_NEW", "N");
	 * listMap.put("FILE_IDX", map.get(idx)); list.add(listMap); } } } return
	 * list; }
	 */

}
