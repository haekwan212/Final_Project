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

	// 주문취소 목록
	public List<Map<String, Object>> allCancelList(Map<String, Object> map) throws Exception{
		return adminCancelDAO.allCancelList(map);
	}

	// 주문반품/교환목록
	public List<Map<String, Object>> allExchangeList(Map<String, Object> map) throws Exception{
		return adminCancelDAO.allExchangeList(map);
	}

}
