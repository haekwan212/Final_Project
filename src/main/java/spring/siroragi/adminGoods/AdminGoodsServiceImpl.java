package spring.siroragi.adminGoods;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Service;

import spring.kh.siroragi.GoodsImageUtils;

@Service("adminGoodsService")
public class AdminGoodsServiceImpl implements AdminGoodsService {

	@Resource(name="adminGoodsDAO")
	private AdminGoodsDAO adminGoodsDAO;
	
	@Resource(name="goodsImageUtils")
	private GoodsImageUtils goodsImageUtils;
	
	
	
	// 상품 목록 전체 불러오기
	@SuppressWarnings("null")
	@Override
	public List<Map<String,Object>> goodsList(Map<String,Object> map) throws Exception{
		
		//Integer countGoodsList=new Integer(adminGoodsDAO.countGoodsList());
		
		List<Map<String,Object>> goodsList=adminGoodsDAO.goodsList(map);
		//Map<String, Object> goodsCount=new HashMap<String, Object>();
		
		//goodsCount.put("count", countGoodsList);
		
		//goodsList.add(goodsCount);
		
		return goodsList;
		
	}
	
	public Integer countGoodsList() throws Exception{
		return new Integer(adminGoodsDAO.countGoodsList());
	}

	// 상품 등록 폼으로 이동

	// 상품 등록
	@Override
	public void goodsInsert(Map<String, Object> map, HttpServletRequest request) throws Exception{
		
		//System.out.println("DB작업전"+map);
		
		adminGoodsDAO.goodsInsert(map);
		
		map=goodsImageUtils.goodsThumbnail(map, request);
		
		adminGoodsDAO.goodsThumbnailInsert(map);
		
		//System.out.println(map);
		String[] colors=request.getParameterValues("GOODS_COLOR");
		String[] sizes=request.getParameterValues("GOODS_SIZE");
		String[] amounts=request.getParameterValues("GOODS_AMOUNT");
		
		for(int i=0; i<colors.length;i++){
			map.put("GOODS_COLOR", colors[i]);
			map.put("GOODS_SIZE", sizes[i]);
			map.put("GOODS_AMOUNT", amounts[i]);
			adminGoodsDAO.goodsKindsInsert(map);
		}
		
		List<Map<String,Object>> goodsImageList=goodsImageUtils.parseInsertFileInfo(map, request);
		
		//System.out.println("goodsImageList : "+goodsImageList);
		//System.out.println("mapImage : "+map.get("IMAGE"));
		
		for(int i=0, size=goodsImageList.size(); i<size; i++){
			adminGoodsDAO.goodsImageInsert(goodsImageList.get(i));
		}
		/*for(int i=0; i<colors.length;i++){
			System.out.println(colors[i]+" "+sizes[i]+" "+amounts[i]);
		}*/
		//adminGoodsDAO.goodsInsert(map);
	}
	
	/*// 상품 세분화 등록
	@Override
	public void goodsKindsInsert(Map<String, Object> map, HttpServletRequest request) throws Exception{
		adminGoodsDAO.goodsKindsInsert(map);
	}
	
	// 상품 이미지 등록
	public void goodsImageInsert(Map<String, Object> map, HttpServletRequest request) throws Exception{
		
	}*/
	

	// 상품 수정
	
	

	// 상품 삭제
	
	

	// 상품 검색
	

}
