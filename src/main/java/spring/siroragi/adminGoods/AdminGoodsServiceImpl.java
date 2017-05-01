package spring.siroragi.adminGoods;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Service;

@Service("adminGoodsService")
public class AdminGoodsServiceImpl implements AdminGoodsService {

	@Resource(name="adminGoodsDAO")
	private AdminGoodsDAO adminGoodsDAO;
	
	
	// 상품 목록 전체 불러오기
	

	// 상품 등록 폼으로 이동

	// 상품 등록
	@Override
	public void goodsInsert(Map<String, Object> map, HttpServletRequest request) throws Exception{
		
		adminGoodsDAO.goodsInsert(map);
	}
	
	// 상품 세분화 등록
	@Override
	public void goodsKindsInsert(Map<String, Object> map, HttpServletRequest request) throws Exception{
		adminGoodsDAO.goodsKindsInsert(map);
	}
	
	// 상품 이미지 등록
	public void goodsImageInsert(Map<String, Object> map, HttpServletRequest request) throws Exception{
		
	}
	

	// 상품 수정
	
	

	// 상품 삭제
	
	

	// 상품 검색
	

}
