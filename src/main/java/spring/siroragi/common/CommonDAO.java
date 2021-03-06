package spring.siroragi.common;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import spring.kh.siroragi.AbstractDAO;

@Repository("commonDAO")
public class CommonDAO extends AbstractDAO {

	//메인페이지로 이동
	
	//기업 소개로 이동
	
	//이용약관으로 이동
	
	//개인정보 취급방침으로 이동
	
	//이용안내로 이동
	
	//제품 카테고리 =TOP리스트
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> listByTop(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>)selectList("common.listByTop", map);
	}
	//제품 카테고리 =outer리스트
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> listByOut(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>)selectList("common.listByOut", map);
	}
	//제품 카테고리 =pants리스트
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> listByPan(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>)selectList("common.listByPan", map);
	}
	//ACC불러오기
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> listByAcc(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>)selectList("common.listByAcc", map);
	}
	//Shoes불러오기
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> listByShoes(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>)selectList("common.listByShoes", map);
	}
	//Sale기간 지난 물품 정리
	public void goodsSale(Map<String, Object> map) throws Exception{
		update("common.goodsSale",map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> adImages(Map<String, Object> map)  throws Exception {
		return (List<Map<String, Object>>)selectList("common.adImages", map);
	}
}
