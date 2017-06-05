package spring.siroragi.header;

import java.util.List;
import java.util.Map;

public interface StoreService {

	List<Map<String, Object>> storeList(Map<String, Object> map) throws Exception;

	Map<String, Object> storeSelect(Map<String, Object> map) throws Exception;

}
