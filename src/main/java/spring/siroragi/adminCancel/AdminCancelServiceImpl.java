package spring.siroragi.adminCancel;

import java.util.List;
import java.util.Map;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Service("adminCancelService")
public class AdminCancelServiceImpl implements AdminCancelService {

	@Resource(name = "adminCancelDAO")
	private AdminCancelDAO adminCancelDAO;
	
	//해당 주문에 대한 캔슬있나 확인
	public Map<String, Object> confirmCancel(Map<String, Object> map) throws Exception{
		return adminCancelDAO.confirmCancel(map);
	}

	// 주문취소 목록
	public List<Map<String, Object>> allCancelList(Map<String, Object> map) throws Exception{
		return adminCancelDAO.allCancelList(map);
	}

	// 주문반품/교환목록
	public List<Map<String, Object>> allExchangeList(Map<String, Object> map) throws Exception{
		return adminCancelDAO.allExchangeList(map);
	}
	
	// 주문취소 검색
	public List<Map<String, Object>> allCancelSearch1(Map<String, Object> map) throws Exception{
		return adminCancelDAO.allCancelSearch1(map);
	}
	public List<Map<String, Object>> allCancelSearch2(Map<String, Object> map) throws Exception{
		return adminCancelDAO.allCancelSearch2(map);
	}
	public List<Map<String, Object>> allCancelSearch3(Map<String, Object> map) throws Exception{
		return adminCancelDAO.allCancelSearch3(map);
	}
	public List<Map<String, Object>> allCancelSearch4(Map<String, Object> map) throws Exception{
		return adminCancelDAO.allCancelSearch4(map);
	}
			
	// 교환/반품 검색
	public List<Map<String, Object>> allExchangeSearch1(Map<String, Object> map) throws Exception{
		return adminCancelDAO.allExchangeSearch1(map);
	}
	public List<Map<String, Object>> allExchangeSearch2(Map<String, Object> map) throws Exception{
		return adminCancelDAO.allExchangeSearch2(map);
	}
	public List<Map<String, Object>> allExchangeSearch3(Map<String, Object> map) throws Exception{
		return adminCancelDAO.allExchangeSearch3(map);
	}
	public List<Map<String, Object>> allExchangeSearch4(Map<String, Object> map) throws Exception{
		return adminCancelDAO.allExchangeSearch4(map);
	}
	public List<Map<String, Object>> allExchangeSearch5(Map<String, Object> map) throws Exception{
		return adminCancelDAO.allExchangeSearch5(map);
	}

}
