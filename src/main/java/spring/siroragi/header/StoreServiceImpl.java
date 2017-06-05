package spring.siroragi.header;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("StoreService")
public class StoreServiceImpl implements StoreService {

	@Resource(name = "storeDAO")
	private StoreDAO storeDAO;

	// Q&A 전체 글 목록 불러오기
	@Override
	public List<Map<String, Object>> storeList(Map<String, Object> map) throws Exception {
		return storeDAO.storeList(map);
	}

	@Override
	public Map<String, Object> storeSelect(Map<String, Object> map) throws Exception {
		return storeDAO.storeSelect(map);
	}
}
