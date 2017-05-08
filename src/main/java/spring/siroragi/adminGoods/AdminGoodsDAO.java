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
	public List<Map<String, Object>> goodsList(Map<String, Object> map) throws Exception {
		return sqlSession.selectList("adminGoods.selectAdminGoodsList");
	}

	// 등록된 상품 목록 수 구하기
	public int countGoodsList() throws Exception {
		return sqlSession.selectOne("adminGoods.countAdminGoods");
	}

	// 상품 등록 폼으로 이동

	// 상품 등록
	public void goodsInsert(Map<String, Object> map) throws Exception {
		sqlSession.insert("adminGoods.insertAdminGoods", map);
	}

	// 상품 세분화 등록
	public void goodsKindsInsert(Map<String, Object> map) throws Exception {
		sqlSession.insert("adminGoods.insertAdminGoodsKinds", map);
	}

	// 상품 썸네일 이미지 등록
	public void goodsThumbnailInsert(Map<String, Object> map) throws Exception {
		sqlSession.update("adminGoods.insertGoodsThumbnail", map);
	}

	// 상품 이미지 등록
	public void goodsImageInsert(Map<String, Object> map) throws Exception {
		sqlSession.insert("adminGoods.insertAdminGoodsImage", map);
	}

	// 상품 수정 폼으로 이동(데이터 들고가야함)

	// 상품 수정
	public void goodsModify(Map<String, Object> map) throws Exception {
		sqlSession.insert("adminGoods.modifyAdminGoods", map);
	}

	// 상품 수정 OFF시, 장바구니와 위시리스트에서 제외

	// 상품 삭제
	public void goodsDelete(Map<String, Object> map) throws Exception {
		sqlSession.insert("adminGoods.deleteAdminGoods", map);
	}

	// 상품 검색(상품 이름)
	public List<Map<String, Object>> adminGoodsSearch0(String isSearch) throws Exception {
		return sqlSession.selectList("adminGoods.adminGoodsSearch0");
	}

	// 상품 검색(상품 번호)
	public List<Map<String, Object>> adminGoodsSearch1(String isSearch) throws Exception {
		return sqlSession.selectList("adminGoods.adminGoodsSearch1");
	}

	// 상품 검색(카테고리 검색)
	public List<Map<String, Object>> adminGoodsSearch2(String isSearch) throws Exception {
		return sqlSession.selectList("adminGoods.adminGoodsSearch2");
	}

	// 상품 검색(판매 활성화 or 비활성화 구분)
	public List<Map<String, Object>> adminGoodsSearch3(String isSearch) throws Exception {
		return sqlSession.selectList("adminGoods.adminGoodsSearch3");
	}

	// 상품 검색(재고가 0인 상품)
	public List<Map<String, Object>> adminGoodsSearch4(String isSearch) throws Exception {
		return sqlSession.selectList("adminGoods.adminGoodsSearch4");
	}

	// 상품 검색(재고가 0인 상품)
	public List<Map<String, Object>> adminGoodsSearch5(String isSearch) throws Exception {
		return sqlSession.selectList("adminGoods.adminGoodsSearch5");
	}

}
