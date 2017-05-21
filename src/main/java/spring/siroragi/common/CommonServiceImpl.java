package spring.siroragi.common;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("commonService")
public class CommonServiceImpl implements CommonService{

	@Resource(name="commonDAO")
	private CommonDAO commonDAO;
	
	@Override
	public List<Map<String, Object>> listByTop(Map<String, Object> map) throws Exception {
		return commonDAO.listByTop(map);
	}
	@Override
	public List<Map<String, Object>> listByOut(Map<String, Object> map) throws Exception {
		return commonDAO.listByOut(map);
	}
	@Override
	public List<Map<String, Object>> listByPan(Map<String, Object> map) throws Exception {
		return commonDAO.listByPan(map);
	}
}
