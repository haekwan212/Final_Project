package spring.siroragi.cart;

import java.util.Map;

public interface CartService {

		//회원 개인의 장바구니 목록 불러오기(OFF된 상품은 제외)
		
		//장바구니 등록
		public void cartIn(Map<String,Object> map) throws Exception;
		public void cartInn(Map<String, Object> map) throws Exception;
		
		//장바구니 해제(삭제)
		
		//장바구니 카운트
		
		//3일이상된 장바구니 목록 삭제
		
		//장바구니 수정(옵션변경)
		
}
