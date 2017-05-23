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

		HttpSession session = request.getSession();
		System.out.println("회원번호 : " + session.getAttribute("MEMBER_NO"));
		if (session.getAttribute("MEMBER_NO") != null) {
			cartService.cartIn(commandMap.getMap());
		} else {
			if (commandMap.get("optno[]") instanceof String) {
				String a=(String) commandMap.get("optno[]");
				String b=(String)commandMap.get("ea[]");
				System.out.println("되나? : "+new String(a.getBytes("8859_1"), "UTF-8"));
			} else {
				System.out.println(" : " + commandMap.get("optno[]"));
				String[] a = (String[]) commandMap.get("optno[]");
				String[] b = (String[]) commandMap.get("ea[]");
				for (int i = 0; i < a.length; i++) {
					System.out.println("optno[] : " + new String(a[i].getBytes("8859_1"), "UTF-8"));
					System.out.println("ea[] : " + b[i]);
				}
			}

		}

		mv.setViewName("cartList");
		return mv;
	}

}
