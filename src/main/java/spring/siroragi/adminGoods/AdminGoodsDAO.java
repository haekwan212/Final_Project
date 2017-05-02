package spring.siroragi.adminGoods;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("adminGoodsDAO")
public class AdminGoodsDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	// 상품 목록 전체 불러오기
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> goodsList(Map<String, Object> map) throws Exception {
		return sqlSession.selectList("adminGoods.selectAdminGoodsList");
	}

	// 상품 등록 폼으로 이동

	// 상품 등록
	public void goodsInsert(Map<String, Object> map) throws Exception {
		sqlSession.insert("adminGoods.insertAdminGoods", map);
	}
	
	//상품 세분화 등록
	public void goodsKindsInsert(Map<String, Object> map) throws Exception{
		sqlSession.insert("adminGoods.insertAdminGoodsKinds", map);
	}
	
	//상품 썸네일 이미지 등록
	public void goodsThumbnailInsert(Map<String,Object> map) throws Exception{
		sqlSession.update("adminGoods.insertGoodsThumbnail",map);
	}
	
	// 상품 이미지 등록
	public void goodsImageInsert(Map<String, Object> map) throws Exception{
		sqlSession.insert("adminGoods.insertAdminGoodsImage", map);
	}

	// 상품 수정
	public void goodsModify(Map<String, Object> map) throws Exception {
		sqlSession.insert("adminGoods.modifyAdminGoods", map);
	}

	// 상품 수정 OFF시, 장바구니와 위시리스트에서 제외

	// 상품 삭제
	public void goodsDelete(Map<String, Object> map) throws Exception {
		sqlSession.insert("adminGoods.deleteAdminGoods", map);
	}

	// 상품 검색
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> goodsSearch(Map<String, Object> map) throws Exception {
		return sqlSession.selectList("adminGoods.searchAdminGoodsList");
	}

}
