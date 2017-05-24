package spring.siroragi.login;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import spring.kh.siroragi.CommandMap;
import spring.siroragi.cart.CartService;
import spring.siroragi.member.MemberService;

@Controller
public class LoginController {

	@Resource(name = "cartService")
	private CartService cartService;
	
	@Resource(name = "loginService")
	private LoginService loginService;

	@Resource(name = "memberService")
	private MemberService memberService;

	/*
	 * function(data){ $("#are").html(data); }
	 */
	// 로그인 폼
	@RequestMapping(value = "/loginForm")
	public ModelAndView loginForm() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("loginForm");
		return mv;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView loginComplete(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		System.out.println("아이디" + commandMap.get("MEMBER_ID"));
		Map<String, Object> chk = loginService.loginByIdAndPassword(commandMap.getMap());
		if (chk == null) {
			mv.setViewName("loginForm");
			mv.addObject("message", "해당 아이디가 없습니다.");
			return mv;
		} else {
			System.out.println("비밀번호1 : " + chk.get("MEMBER_PASSWORD") + "\n2 : " + commandMap.get("MEMBER_PASSWORD"));
			if (chk.get("MEMBER_PASSWORD").equals(commandMap.get("MEMBER_PASSWORD"))) {
				session.setAttribute("MEMBER_ID", commandMap.get("MEMBER_ID"));
				mv.addObject("MEMBER", chk);
				mv.setViewName("redirect:/main");
				session.setAttribute("MEMBER_NAME", chk.get("MEMBER_NAME"));
				session.setAttribute("MEMBER_NUMBER", chk.get("MEMBER_NUMBER"));
				// 이메일 포맷 변경
				String email = chk.get("MEMBER_EMAIL").toString();
				String[] sessionEmail = email.split("@");
				session.setAttribute("MEMBER_EMAIL1", sessionEmail[0].toString());
				session.setAttribute("MEMBER_EMAIL2", sessionEmail[1].toString());
				// 날짜 포맷 변경
				String date = chk.get("MEMBER_BIRTHDAY").toString();
				System.out.println(date);
				SimpleDateFormat original_format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
				SimpleDateFormat new_format = new SimpleDateFormat("yyyyMMdd");

				Date original_date = original_format.parse(date);
				String new_date = new_format.format(original_date);

				session.setAttribute("MEMBER_BIRTHDAY", new_date);
				
				//로그인하면 세션에 있던 장바구니 정보 넣기
				Map<String, Object> cart = new HashMap<String, Object>();

				for (int i = 0;; i++) {

					if (session.getAttribute("cartKinds" + i) != null) {
						cart.put("MEMBER_NUMBER", chk.get("MEMBER_NUMBER"));
						cart.put("GOODS_KINDS_NUMBER", session.getAttribute("cartKinds"+i));
						cart.put("CART_AMOUNT", session.getAttribute("cartAmount"+i));
						cart.put("GOODS_NUMBER", session.getAttribute("cartGoodsNum"+i));
						
						cartService.cartInn(cart);
						session.removeAttribute("cartKinds"+i);
						session.removeAttribute("cartAmount"+i);
						session.removeAttribute("cartGoodsNum"+i);
					}else{
						break;
					}

				}

				return mv;
			} else {
				mv.setViewName("loginForm");
				mv.addObject("message", "비밀번호를 확인해 주세요.");
				return mv;
			}
		}
	}

	@RequestMapping(value = "/logout")
	public ModelAndView logout(HttpServletRequest request, CommandMap commandMap) {
		HttpSession session = request.getSession(false);
		if (session != null)
			session.invalidate();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/main");
		return mv;
	}
}