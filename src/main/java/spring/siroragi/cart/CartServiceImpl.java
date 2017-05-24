package spring.siroragi.cart;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("cartService")
public class CartServiceImpl implements CartService {

	@Resource(name = "cartDAO")
	private CartDAO cartDAO;

	// 장바구니 등록
	public void cartIn(Map<String, Object> map) throws Exception {

		Map<String, Object> cart = new HashMap<String, Object>();

		if (map.get("optno[]") instanceof String[]) {
			String[] a = (String[]) map.get("kinds[]"); // 옷 종류 번호
			String[] b = (String[]) map.get("ea[]"); // 옷 수량

			for (int i = 0; i < a.length; i++) {
				cart.put("GOODS_NUMBER", Integer.parseInt(map.get("GOODS_NUMBER").toString()));
				cart.put("MEMBER_NUMBER", map.get("MEMBER_NUMBER"));
				cart.put("CART_AMOUNT", b[i]);
				cart.put("GOODS_KINDS_NUMBER", a[i]);

				if (cartDAO.confirmCart(cart) != null)
					cartDAO.addCartAmount(cartDAO.confirmCart(cart));
				else
					cartDAO.cartIn(cart);
			}
		} else {
			String a = (String) map.get("kinds[]"); // 옷 종류 번호
			String b = (String) map.get("ea[]"); // 옷 수량
			cart.put("GOODS_NUMBER", Integer.parseInt(map.get("GOODS_NUMBER").toString()));
			cart.put("MEMBER_NUMBER", map.get("MEMBER_NUMBER"));
			cart.put("GOODS_KINDS_NUMBER", a);
			cart.put("CART_AMOUNT", b);

			if (cartDAO.confirmCart(cart) != null)
				return;
			else
				cartDAO.cartIn(cart);

		}

	}

	// 로그인시 장바구니 등록
	public void cartInn(Map<String, Object> map) throws Exception {

		if (cartDAO.confirmCart(map) != null)
			return;
		else
			cartDAO.cartIn(map);
	}

}
