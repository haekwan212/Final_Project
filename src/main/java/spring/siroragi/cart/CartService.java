package spring.siroragi.cart;

import java.util.List;
import java.util.Map;

public interface CartService {

		//회원 개인의 장바구니 목록 불러오기(OFF된 상품은 제외)
		public List<Map<String, Object>> cartList(Map<String, Object> map) throws Exception;
		// 세션에서 장바구니 목록 불러오기
		public Map<String, Object> sessionCartList(Map<String, Object> map) throws Exception;
	
		//장바구니 등록
		public void cartIn(Map<String,Object> map) throws Exception;
		public void cartInn(Map<String, Object> map) throws Exception;
		
		//장바구니 옵션에서 해당 상품에 대한 정보 불러오기
		public Map<String,Object> selectOption(Map<String, Object> map) throws Exception;
		public Map<String,Object> sessionOption(Map<String, Object> map) throws Exception;
		
		//장바구니 해제(삭제)
		public void deleteMyCart(Map<String,Object> map) throws Exception;
		
		//장바구니 카운트
		
		//3일이상된 장바구니 목록 삭제
		public void deleteCarts(Map<String, Object> map) throws Exception;
		
		//장바구니 수정(옵션변경)
		public void updateCarts(Map<String, Object> map) throws Exception;
		
}
