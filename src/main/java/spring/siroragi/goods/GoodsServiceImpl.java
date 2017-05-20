package spring.siroragi.goods;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {

	@Resource(name = "goodsDAO")
	private GoodsDAO goodsDAO;

	// 카테고리별 상품 정렬

	// 검색 결과에 대한 상품 정렬

	// 낮은가격/높은가격/상품명/리뷰수/평점순/인기순/신상순 정렬

	// 상품 상세보기 페이지로 이동
	public List<Map<String, Object>> goodsDetail(Map<String, Object> map) throws Exception {
		return goodsDAO.goodsDetail(map);
	}

	// 상품 총 판매량 구하기
	public int countTotalSell(Map<String, Object> map) throws Exception {
		return goodsDAO.countTotalSell(map);
	}

	// 상품 이미지 가져오기
	public List<Map<String, Object>> goodsImage(Map<String, Object> map) throws Exception {
		return goodsDAO.goodsImage(map);
	}

	// 코디된 상품 보여주기
	public List<Map<String, Object>> relatedGoods(Map<String, Object> map) throws Exception {

		List<Map<String, Object>> relatedGoodsList = new ArrayList<Map<String, Object>>();
		Map<String,Object> goodsNum=new HashMap<String,Object>();
		
		if (map.get("GOODS_RELATED") != null) {
			String related = (String) map.get("GOODS_RELATED");

			String[] relatedGoods = related.split(",");

			for (String a : relatedGoods) {
				goodsNum.put("GOODS_NUMBER", a);
				Map<String,Object> relatedInfo=goodsDAO.relatedGoodsThumbnail(goodsNum);
				if(relatedInfo!=null){
					relatedGoodsList.add(relatedInfo);
				}
			}
		}

		return relatedGoodsList;

	}
	
	//상품 조회수 올리기
	public void goodsCountUp(Map<String, Object> map) throws Exception{
		goodsDAO.goodsCountUp(map);
	}

}
