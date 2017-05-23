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
		System.out.println("회원번호 : " + session.getAttribute("MEMBER_NO"));
		
		int j=0;
		
		if (session.getAttribute("MEMBER_NO") != null) {	
			//로그인 정보가 있으면 DB에 등록
			cartService.cartIn(commandMap.getMap());
		} else {	
			//로그인 정보가 없으면 세션에 저장
			if (commandMap.get("optno[]") instanceof String) {
				//카트이름이 이미 세션에 존재하면 다음 숫자로 넘어가야해.
				String a=(String) commandMap.get("optno[]");
				String b=(String)commandMap.get("ea[]");
				System.out.println("되나? : "+new String(a.getBytes("8859_1"), "UTF-8"));
				String cartGoods[]= a.split("-");
				session.setAttribute("cartColor0", cartGoods[0]);
				session.setAttribute("cartSize0", cartGoods[1]);
				session.setAttribute("cartAmount0", b);
			} else {
				System.out.println(" : " + commandMap.get("optno[]"));
				String[] a = (String[]) commandMap.get("optno[]");
				String[] b = (String[]) commandMap.get("ea[]");
				for (int i = 1; i < a.length; i++) {
					System.out.println("optno[] : " + new String(a[i].getBytes("8859_1"), "UTF-8"));
					System.out.println("ea[] : " + b[i]);
					String cartGoods[]= a[i].split("-");
					session.setAttribute("cartColor"+i, cartGoods[0]);
					session.setAttribute("cartSize"+i, cartGoods[1]);
					session.setAttribute("cartAmount"+i, b[i]);
				}
			}

		}
		
		for(int i=0;;i++){
			if(session.getAttribute("cartColor"+i) !=null){
				System.out.println("color : "+session.getAttribute("cartSize"+i));
			}
			else
				break;
		}

		
		return mv;
	}

}
