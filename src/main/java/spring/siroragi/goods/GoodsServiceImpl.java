package spring.siroragi.goods;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("goodsService")
public class GoodsServiceImpl implements GoodsService{
	
	@Resource(name="goodsDAO")
	private GoodsDAO goodsDAO;

	@Override
	public List<Map<String, Object>> goodsSearch(String isSearch) throws Exception {
		return goodsDAO.goodsSearch(isSearch);
	}

}
