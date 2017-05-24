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

	@Override
	public List<Map<String, Object>> goodsCategory(String isCategory) throws Exception {
		return goodsDAO.goodsCategory(isCategory);
	}

	@Override
	public List<Map<String, Object>> goodsRank(String isCategory) throws Exception {
		return goodsDAO.goodsRank(isCategory);
	}

	@Override
	public List<Map<String, Object>> goodsCategorySearch(Map<String, Object> map) throws Exception {
		return goodsDAO.goodsCategorySearch(map);
	}


}
