package spring.kh.siroragi;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Component("goodsImageUtils")
public class GoodsImageUtils {
	
	private static final String filePath = "C:\\Java\\App\\SIRORAGI\\src\\main\\webapp\\file\\goodsFile\\";
	
	//상품 썸네일 이미지 등록
	public Map<String,Object> goodsThumbnail(Map<String,Object>map, HttpServletRequest request) throws Exception{
		
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
		
		MultipartFile file=multipartHttpServletRequest.getFile("GOODS_THUMBNAIL");
		String fileName="상품썸네일_"+map.get("GOODS_NUMBER").toString();
		
		String IMAGEExtension=file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
		
		File uploadFile=new File(filePath+fileName+IMAGEExtension);
		
		try{
			file.transferTo(uploadFile);
		} catch(Exception e){
			
		}
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		Map<String, Object> listMap = null; 
		
		map.put("GOODS_THUMBNAIL", fileName+IMAGEExtension);
		
		return map;
	}
	
	//상품이미지 등록
	public List<Map<String,Object>> parseInsertFileInfo(Map<String,Object> map, HttpServletRequest request) throws Exception{
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
		List<MultipartFile> imageFile=multipartHttpServletRequest.getFiles("IMAGE");
    	
		//System.out.println("IMAGE : "+imageFile);
		//Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
    	
    	//MultipartFile multipartFile = null;
    	String IMAGE = null;
    	String IMAGEExtension=null;
    	
    	List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
        Map<String, Object> listMap = null; 
        
        String GOODS_NUMBER =map.get("GOODS_NUMBER").toString();
        
        File file = new File(filePath);
        if(file.exists() == false){
        	file.mkdirs();	//폴더가 존재하지 않으면 폴더 생성
        }
        
        for(MultipartFile multipartFile : imageFile){
        	//System.out.println("IMAGE File : "+multipartFile);
        	if(multipartFile.isEmpty() == false){
        	IMAGEExtension = multipartFile.getOriginalFilename().substring(multipartFile.getOriginalFilename().lastIndexOf("."));
        	IMAGE = "상품이미지_"+GOODS_NUMBER+"_"+System.currentTimeMillis()+IMAGEExtension;
    		
        	file = new File(filePath + IMAGE);
    		multipartFile.transferTo(file);
    		
    		listMap = new HashMap<String,Object>();
    		listMap.put("IMAGE", IMAGE);
    		
    		listMap.put("GOODS_NUMBER", map.get("GOODS_NUMBER"));
    		list.add(listMap);
        	
        	}
        	
        }
        
    	return list;
        
        /*while(iterator.hasNext()){
        	multipartFile = multipartHttpServletRequest.getFile(iterator.next());
        	if(multipartFile.isEmpty() == false){
        		
        		//확장자 구하기
        		IMAGEExtension = multipartFile.getOriginalFilename().substring(multipartFile.getOriginalFilename().lastIndexOf("."));
        		IMAGE = "상품이미지_"+GOODS_NUMBER+"_"+System.currentTimeMillis()+IMAGEExtension;
        		
        		
        		file = new File(filePath + IMAGE);
        		multipartFile.transferTo(file);
        		
        		listMap = new HashMap<String,Object>();
        		listMap.put("GOODS_NUMBER", map.get("GOODS_NUMBER"));
        		listMap.put("IMAGE", IMAGE);
        		list.add(listMap);
        	}
        }
		return list;*/
	}
	
	//파일 삭제
	public void parseDeleteFileInfo(Map<String,Object> map, HttpServletRequest request) throws Exception{
		
	}

	/*public List<Map<String, Object>> parseUpdateFileInfo(Map<String, Object> map, HttpServletRequest request) throws Exception{
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
    	Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
    	
    	MultipartFile multipartFile = null;
    	String originalFileName = null;
    	String originalFileExtension = null;
    	String storedFileName = null;
    	
    	List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
        Map<String, Object> listMap = null; 
        
        String boardIdx = (String)map.get("IDX");
        String requestName = null;
        String idx = null;
        
        
        while(iterator.hasNext()){
        	multipartFile = multipartHttpServletRequest.getFile(iterator.next());
        	if(multipartFile.isEmpty() == false){
        		originalFileName = multipartFile.getOriginalFilename();
        		originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
        		storedFileName = CommonUtils.getRandomString() + originalFileExtension;
        		
        		multipartFile.transferTo(new File(filePath + storedFileName));
        		
        		listMap = new HashMap<String,Object>();
        		listMap.put("IS_NEW", "Y");
        		listMap.put("BOARD_IDX", boardIdx);
        		listMap.put("ORIGINAL_FILE_NAME", originalFileName);
        		listMap.put("STORED_FILE_NAME", storedFileName);
        		listMap.put("FILE_SIZE", multipartFile.getSize());
        		list.add(listMap);
        	}
        	else{
        		requestName = multipartFile.getName();
            	idx = "IDX_"+requestName.substring(requestName.indexOf("_")+1);
            	if(map.containsKey(idx) == true && map.get(idx) != null){
            		listMap = new HashMap<String,Object>();
            		listMap.put("IS_NEW", "N");
            		listMap.put("FILE_IDX", map.get(idx));
            		list.add(listMap);
            	}
        	}
        }
		return list;
	}*/
	
}
