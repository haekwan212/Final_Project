package spring.siroragi.cart;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import spring.kh.siroragi.CommandMap;

@Controller
public class CartController {

	@Resource(name = "cartService")
	private CartService cartService;

	@RequestMapping(value = "/cart/cartList")
	public ModelAndView cartList() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cartList");
		return mv;
	}

	// 장바구니 등록
	@RequestMapping(value = "/cart/cartIn")
	public ModelAndView cartIn(CommandMap commandMap, HttpServletRequest request) throws Exception {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("cartList");

		HttpSession session = request.getSession();

		if (session.getAttribute("MEMBER_NUMBER") != null) {
			commandMap.put("GOODS_NUMBER", commandMap.get("goodsno"));
			// 로그인 정보가 있으면 DB에 등록
			commandMap.put("MEMBER_NUMBER", session.getAttribute("MEMBER_NUMBER"));

			cartService.cartIn(commandMap.getMap());
		} else {
			commandMap.put("GOODS_NUMBER", commandMap.get("goodsno"));
			// 로그인 정보가 없으면 세션에 저장
			if (commandMap.get("optno[]") instanceof String) {
				// 카트 이름이 이미 세션에 존재하면 다음 숫자로 넘어가야해.
				String b = (String) commandMap.get("ea[]");
				String c = (String) commandMap.get("kinds[]");
				Integer e = Integer.parseInt(commandMap.get("GOODS_NUMBER").toString());
				
				for (int i = 0;; i++) {
					if (session.getAttribute("cartKinds" + i) == null) {
						session.setAttribute("cartKinds" + i, c);
						session.setAttribute("cartAmount" + i, b);
						session.setAttribute("cartGoodsNum"+i, e);
						break;
					}
				}
			} else {
				String[] a = (String[]) commandMap.get("kinds[]");
				String[] b = (String[]) commandMap.get("ea[]");
				Integer e = Integer.parseInt(commandMap.get("GOODS_NUMBER").toString());
				for (int i = 1; i < a.length; i++) {
					
					for (int d = 0; ; d++) {
						if (session.getAttribute("cartKinds" + d) == null) {
							session.setAttribute("cartKinds" + d, a[i]);
							session.setAttribute("cartAmount" + d, b[i]);
							session.setAttribute("cartGoodsNum"+d, e);
							break;
						}
					}
				}
			}

		}

		for (int i = 0;; i++) {
			if (session.getAttribute("cartColor" + i) != null) {
				System.out.println("color : " + session.getAttribute("cartSize" + i));
			} else
				break;
		}

		return mv;
	}

}
