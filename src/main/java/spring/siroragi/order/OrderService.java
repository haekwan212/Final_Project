package spring.siroragi.order;

import java.util.List;
import java.util.Map;

public interface OrderService {

	Map<String, Object> orderMember(Map<String, Object> map) throws Exception;

	Map<String, Object> orderGoods(Map<String, Object> map) throws Exception;

	void insertMemberDelivery(Map<String, Object> map) throws Exception;

	void insertOrderList(Map<String, Object> map) throws Exception;

	void updatePoint(Map<String, Object> map) throws Exception;

	void orderGoodsSell(Map<String, Object> map) throws Exception;

	Map<String, Object> selectCartOrder(Map<String, Object> map) throws Exception;

	Map<String, Object> sessionCartList(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> noMemberOrderList(Map<String, Object> map) throws Exception;

	// 주문하기 폼으로 이동(상세보기페이지에서 이동.한 상품만 결제)

	// 주문시 로그인 확인하고 로그인 폼으로 이동(비회원 로그인폼도 포함)

	// 비회원 주문확인(주문코드, 비밀번호 검사)

	// 주문 내역을 DB에 등록

	// 결제 확인창으로 이동(주문 내역 상세보기)

	// 장바구니에서 주문하기 폼으로 이동(장바구니 상품 결제)

	// 회원 개인의 주문내역 불러오기

	// 주문내역 상세보기

	// 관리자의 주문 내역 수정(배송 정보 수정)

	// 회원의 주문 내역 수정(주문 정보 수정)

	// 주문 내역 검색
}
