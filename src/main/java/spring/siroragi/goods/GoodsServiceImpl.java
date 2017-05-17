package spring.siroragi.goods;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {

	@Resource(name="goodsDAO")
	private GoodsDAO goodsDAO;
	
	// 카테고리별 상품 정렬

	// 검색 결과에 대한 상품 정렬

	// 낮은가격/높은가격/상품명/리뷰수/평점순/인기순/신상순 정렬

	// 상품 상세보기 페이지로 이동
	public List<Map<String, Object>> goodsDetail(Map<String,Object> map) throws Exception{
		return goodsDAO.goodsDetail(map);
	}
	
	// 코디된 상품 보여주기
	
}
