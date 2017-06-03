package spring.siroragi.cart;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	// 장바구니 리스트 불러오기
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/cartList")
	public ModelAndView cartList(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();

		List<Map<String, Object>> cartList = new ArrayList<Map<String, Object>>();

		Calendar today = Calendar.getInstance();
		Date d = new Date(today.getTimeInMillis());

		HttpSession session = request.getSession();
		List<Map<String, Object>> cartSession = new ArrayList<Map<String, Object>>();
		Map<String, Object> cartMap = new HashMap<String, Object>();

		if (session.getAttribute("MEMBER_NUMBER") != null) {
			commandMap.put("MEMBER_NUMBER", session.getAttribute("MEMBER_NUMBER"));
			cartList = cartService.cartList(commandMap.getMap());

			for (int i = 0; i < cartList.size(); i++) {
				if (cartList.get(i).get("GOODS_SALEDATE") != null && cartList.get(i).get("GOODS_DCPRICE") != null) {
					Date dDay = (Date) cartList.get(i).get("GOODS_SALEDATE");
					if (dDay.getTime() < d.getTime()) {
						cartList.get(i).remove("GOODS_SALEDATE");
						cartList.get(i).remove("GOODS_DCPRICE");
					}
				}
			}
		} else {
			if (session.getAttribute("cartSession") != null) {
				cartSession = (List<Map<String, Object>>) session.getAttribute("cartSession");
				for (int i = 0; i < cartSession.size(); i++) {
					cartMap = new HashMap<String, Object>();
					cartMap.put("GOODS_KINDS_NUMBER", cartSession.get(i).get("GOODS_KINDS_NUMBER"));
					cartMap.put("GOODS_NUMBER", cartSession.get(i).get("GOODS_NUMBER"));

					cartMap = cartService.sessionCartList(cartMap);
					cartMap.put("CART_AMOUNT", cartSession.get(i).get("CART_AMOUNT"));

					cartList.add(cartMap);
				}
			}
		}

		mv.addObject("cartList", cartList);
		mv.setViewName("cartList");
		return mv;
	}

	// 장바구니 등록
	@SuppressWarnings({ "unchecked" })
	@RequestMapping(value = "/cart/cartIn")
	public ModelAndView cartIn(CommandMap commandMap, HttpServletRequest request) throws Exception {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/cartList");

		HttpSession session = request.getSession();

		List<Map<String, Object>> cartSession = new ArrayList<Map<String, Object>>();
		Map<String, Object> cartMap = new HashMap<String, Object>();

		cartSession = (List<Map<String, Object>>) session.getAttribute("cartSession");

		if (session.getAttribute("MEMBER_NUMBER") != null) {
			commandMap.put("GOODS_NUMBER", commandMap.get("goodsno"));
			// 로그인 정보가 있으면 DB에 등록
			commandMap.put("MEMBER_NUMBER", session.getAttribute("MEMBER_NUMBER"));

			cartService.cartIn(commandMap.getMap());
		} else {
			commandMap.put("GOODS_NUMBER", commandMap.get("goodsno"));
			// 로그인 정보가 없으면 세션에 저장
			if (commandMap.get("optno[]") instanceof String) { // 하나의 정보만 전송되면

				String b = (String) commandMap.get("ea[]"); // 수량
				String c = (String) commandMap.get("kinds[]"); // 종류
				Integer e = Integer.parseInt(commandMap.get("GOODS_NUMBER").toString());

				int dup = 0; // 중복데이터 있으면 1, 없으면 0유지

				// 중복 데이터가 없으면 등록 안함
				if (cartSession != null) {
					for (int i = 0; i < cartSession.size(); i++) {
						if (cartSession.get(i).get("GOODS_KINDS_NUMBER") == c) {
							dup = 1;
						}
					}
					if (dup == 0) {
						cartMap.put("GOODS_KINDS_NUMBER", c);
						cartMap.put("CART_AMOUNT", b);
						cartMap.put("GOODS_NUMBER", e);
						cartSession.add(cartMap);
					}
				} else {
					cartSession = new ArrayList<Map<String, Object>>();
					cartMap.put("GOODS_KINDS_NUMBER", c);
					cartMap.put("CART_AMOUNT", b);
					cartMap.put("GOODS_NUMBER", e);
					cartSession.add(cartMap);
				}

			} else { // 로그인정보도 없고, 전송된 데이터가 여러개면

				String[] a = (String[]) commandMap.get("kinds[]");
				String[] b = (String[]) commandMap.get("ea[]");
				Integer e = Integer.parseInt(commandMap.get("GOODS_NUMBER").toString());
				int dup = 0;
				if (cartSession != null) {
					for (int i = 0; i < a.length; i++) {
						dup = 0; // 0이면 중복 없음. 1이면 중복있음
						for (int j = 0; j < cartSession.size(); j++) {

							if (a[i] == cartSession.get(j).get("GOODS_KINDS_NUMBER")) {

								dup = 1;
							}
						}
						if (dup == 0) {

							cartMap.put("GOODS_KINDS_NUMBER", a[i]);
							cartMap.put("CART_AMOUNT", b[i]);
							cartMap.put("GOODS_NUMBER", e);
							cartSession.add(cartMap);
						}
					}
				} else {
					cartSession = new ArrayList<Map<String, Object>>();
					for (int i = 0; i < a.length; i++) {

						cartMap = new HashMap<String, Object>();
						cartMap.put("GOODS_KINDS_NUMBER", a[i]);
						cartMap.put("CART_AMOUNT", b[i]);
						cartMap.put("GOODS_NUMBER", e);

						cartSession.add(i, cartMap);

					}
				}
			}
		}

		session.setAttribute("cartSession", cartSession);

		return mv;
	}

	// 카트 옵션 수정 폼
	@RequestMapping(value = "cart/cartOptionForm")
	public ModelAndView cartOptionForm(CommandMap commandMap, HttpServletRequest request) throws Exception {

		Calendar today = Calendar.getInstance();
		Date d = new Date(today.getTimeInMillis());

		HttpSession session = request.getSession();
		Map<String, Object> cartOption = new HashMap<String, Object>();
		ModelAndView mv = new ModelAndView("cart/cartOption");

		if (session.getAttribute("MEMBER_NUMBER") != null) {
			cartOption = cartService.selectOption(commandMap.getMap());
			if (cartOption.get("GOODS_SALEDATE") != null && cartOption.get("GOODS_DCPRICE") != null) {
				Date dDay = (Date) cartOption.get("GOODS_SALEDATE");
				if (dDay.getTime() < d.getTime()) {
					cartOption.remove("GOODS_SALEDATE");
					cartOption.remove("GOODS_DCPRICE");
				}
			}

		} else {
			cartOption = cartService.sessionOption(commandMap.getMap());
			cartOption.put("CART_AMOUNT", commandMap.get("CART_AMOUNT"));
			if (cartOption.get("GOODS_SALEDATE") != null && cartOption.get("GOODS_DCPRICE") != null) {
				Date dDay = (Date) cartOption.get("GOODS_SALEDATE");
				if (dDay.getTime() < d.getTime()) {
					cartOption.remove("GOODS_SALEDATE");
					cartOption.remove("GOODS_DCPRICE");
				}
			}
		}

		mv.addObject("cartOption", cartOption);
		return mv;
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/optionModify")
	public ModelAndView optionModify(CommandMap commandMap, HttpServletRequest request) throws Exception {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/cartList");
		HttpSession session = request.getSession();
		List<Map<String, Object>> cartSession = new ArrayList<Map<String, Object>>();

		Map<String, Object> cartMap = new HashMap<String, Object>();

		if (session.getAttribute("MEMBER_NUMBER") != null) {
			cartMap.put("CART_NUMBER", commandMap.getMap().get("CART_NUMBER"));
			cartMap.put("CART_AMOUNT", commandMap.getMap().get("ea"));
			cartService.updateCarts(cartMap);
		} else {
			cartSession = (List<Map<String, Object>>) session.getAttribute("cartSession");
			for (int i = 0; i < cartSession.size(); i++) {
				if (cartSession.get(i).get("GOODS_KINDS_NUMBER").equals(commandMap.get("GOODS_KINDS_NUMBER"))) {
					cartSession.get(i).remove("CART_AMOUNT");
					cartSession.get(i).put("CART_AMOUNT", commandMap.getMap().get("ea"));
				}
			}
			session.setAttribute("cartSession", cartSession);
		}

		return mv;

	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/cartDelete")
	public ModelAndView cartDelete(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/cartList");
		HttpSession session = request.getSession();
		List<Map<String, Object>> cartSession = new ArrayList<Map<String, Object>>();
		Map<String, Object> cartMap = new HashMap<String, Object>();
		
		if (session.getAttribute("MEMBER_NUMBER") != null) {	//로그인 했을 때 장바구니 삭제
			if (commandMap.get("GOODS_KINDS_NUMBER") instanceof String){
				cartMap = new HashMap<String, Object>();
				cartMap.put("MEMBER_NUMBER", session.getAttribute("MEMBER_NUMBER"));
				cartMap.put("GOODS_KINDS_NUMBER", commandMap.get("GOODS_KINDS_NUMBER"));
				cartService.deleteMyCart(cartMap);
			} else{
				String[] a = (String[]) commandMap.get("GOODS_KINDS_NUMBER");
				for (int j=0; j<a.length;j++) {
					cartMap = new HashMap<String, Object>();
					cartMap.put("MEMBER_NUMBER", session.getAttribute("MEMBER_NUMBER"));
					cartMap.put("GOODS_KINDS_NUMBER", a[j]);
					cartService.deleteMyCart(cartMap);
				}
			}
		} else {
			if (commandMap.get("GOODS_KINDS_NUMBER") instanceof String) {
				cartSession = (List<Map<String, Object>>) session.getAttribute("cartSession");
				for (int i = 0; i < cartSession.size(); i++) {
					if (cartSession.get(i).get("GOODS_KINDS_NUMBER").equals(commandMap.get("GOODS_KINDS_NUMBER"))) {
						cartSession.remove(i);
					}
				}
			} else {
				String[] a = (String[]) commandMap.get("GOODS_KINDS_NUMBER");
				for (int j=0; j<a.length;j++) {
					cartSession = (List<Map<String, Object>>) session.getAttribute("cartSession");
					for (int i = 0; i < cartSession.size(); i++) {
						if (cartSession.get(i).get("GOODS_KINDS_NUMBER").equals(a[j])) {
							cartSession.remove(i);
						}
					}
				}
			}
		}

		return mv;
	}

}
