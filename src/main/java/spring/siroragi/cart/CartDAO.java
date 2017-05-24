package spring.siroragi.cart;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import spring.kh.siroragi.AbstractDAO;

@Repository("cartDAO")
public class CartDAO extends AbstractDAO{

	//회원 개인의 장바구니 목록 불러오기(OFF된 상품은 제외)
	
	//장바구니 등록
	public void cartIn(Map<String,Object> map) throws Exception{
		insert("cart.insertCart",map);
	}
	
	//장바구니에 이미 들어있나 확인
	@SuppressWarnings("unchecked")
	public Map<String, Object> confirmCart(Map<String,Object> map) throws Exception{
		return (Map<String, Object>)selectOne("cart.confirmCart",map);
	}
	
	//이미 장바구니에 들어있으면 수량 하나 증가
	public void addCartAmount(Map<String,Object> map) throws Exception{
		update("cart.addAmount",map);
	}
	
	//장바구니 해제(삭제)
	
	//장바구니 카운트
	
	//3일이상된 장바구니 목록 삭제
	
	//장바구니 수정(옵션변경)
	
}
