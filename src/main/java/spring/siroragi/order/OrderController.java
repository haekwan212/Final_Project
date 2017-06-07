package spring.siroragi.order;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import spring.kh.siroragi.CommandMap;

@Controller
public class OrderController {

	@Resource(name = "orderService")
	private OrderService orderService;

	@RequestMapping(value="/noMemberOrderList", method=RequestMethod.POST)
	public ModelAndView noMemberOrderList(CommandMap commandMap) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		System.out.println("비회원넘어오는값:"+commandMap.getMap().toString());
		List<Map<String, Object>> list = orderService.noMemberOrderList(commandMap.getMap());
		for(int i  = 0 ; list.size()>i; i++){
			System.out.println("리스트"+i+"번째"+list.get(i).toString());
		}
		System.out.println("비회원구매리스트:"+list);
		mv.addObject("list", list);
		mv.setViewName("noMemberOrderList");
		return mv;
	}
	
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "order")
	public ModelAndView orderForm(CommandMap commandMap, HttpServletRequest request) throws Exception {

		HttpSession session = request.getSession();

		if (session.getAttribute("MEMBER_NUMBER") == null && commandMap.get("guestEmail") == null) {

			ModelAndView mv = new ModelAndView("orderLogin");

			return mv;

		}
		if (commandMap.get("mode") != null) {

			if (commandMap.get("mode").equals("cart")) {

				ModelAndView mv = new ModelAndView("orderForm");

				System.out.println("장바구니 구매");

				commandMap.put("MEMBER_NUMBER", session.getAttribute("MEMBER_NUMBER"));

				Map<String, Object> orderMember = orderService.orderMember(commandMap.getMap());

				mv.addObject("orderMember", orderMember);

				String[] goods_kinds_number = request.getParameterValues("GOODS_KINDS_NUMBER");

				List<String> ea = new ArrayList<String>();

				List<Map<String, Object>> goods1 = new ArrayList<Map<String, Object>>();
				List<Map<String, Object>> goods = new ArrayList<Map<String, Object>>();

				for (int i = 0; i < goods_kinds_number.length; i++) {

					commandMap.put("GOODS_KINDS_NUMBER", goods_kinds_number[i]);

					System.out.println(goods_kinds_number[i]);

					Map<String, Object> cartList = orderService.selectCartOrder(commandMap.getMap());

					String e = cartList.get("CART_AMOUNT").toString();
					cartList.put("EA", e);

					ea.add(e);

					System.out.println("e : " + e);
					System.out.println("ea : " + ea);

					goods1.add(cartList);

					System.out.println("goods : " + goods1);

					mv.addObject("GOODS_NUMBER", goods1.get(i).get("GOODS_NUMBER"));

				}

				String[] sArrays = ea.toArray(new String[ea.size()]);

				for (String s : sArrays) {
					System.out.println(s);
				}

				for (int i = 0; i < sArrays.length; i++) {

					commandMap.put("GOODS_KINDS_NUMBER", goods_kinds_number[i]);
					commandMap.put("EA", sArrays[i]);
					commandMap.put("GOODS_NUMBER", goods1.get(i).get("GOODS_NUMBER"));

					Map<String, Object> orderGoods = orderService.orderGoods(commandMap.getMap());
					// 여기인갑다

					orderGoods.put("EA", sArrays[i]);

					goods.add(orderGoods);

					System.out.println("goods : " + goods);

					mv.addObject("ea", sArrays[i]);

				}

				System.out.println("sArrays : " + sArrays);

				System.out.println("commandMap : " + commandMap.getMap());

				System.out.println("result : " + orderMember);

				mv.addObject("guestEmail", commandMap.get("guestEmail"));

				System.out.println("guestEmail : " + commandMap.get("guestEmail"));

				mv.addObject("goods_kinds_number", goods_kinds_number);

				/*
				 * mv.addObject("GOODS_NUMBER",
				 * session.getAttribute("GOODS_NUMBER"));
				 */

				mv.addObject("goods", goods);

				return mv;
			}
		}

		System.out.println(commandMap.getMap());

		ModelAndView mv = new ModelAndView("orderForm");

		commandMap.put("GOODS_NUMBER", session.getAttribute("GOODS_NUMBER"));

		System.out.println(session.getAttribute("GOODS_NUMBER"));

		if (session.getAttribute("MEMBER_NUMBER") != null || commandMap.get("guestEmail") == null) {

			commandMap.put("MEMBER_NUMBER", session.getAttribute("MEMBER_NUMBER"));

			System.out.println(session.getAttribute("MEMBER_NUMBER"));

			Map<String, Object> orderMember = orderService.orderMember(commandMap.getMap());

			mv.addObject("orderMember", orderMember);

		}

		String[] goods_kinds_number = request.getParameterValues("kinds[]");
		String[] cart_kinds_number = request.getParameterValues("GOODS_KINDS_NUMBER");
		String[] ea = request.getParameterValues("ea[]");

		List<String> ea1 = new ArrayList<String>();
		Map<String, Object> cartList = new HashMap<String, Object>();
		List<Map<String, Object>> cartList1 = new ArrayList<Map<String, Object>>();

		List<Map<String, Object>> goods1 = new ArrayList<Map<String, Object>>();
		List<Map<String, Object>> goods = new ArrayList<Map<String, Object>>();
		List<Map<String, Object>> cartSession = new ArrayList<Map<String, Object>>();

		if (cart_kinds_number != null) {
			System.out.println("cart_kinds_number : " + cart_kinds_number);
			System.out.println("commandMap : " + commandMap.getMap());
			for (int i = 0; i < cart_kinds_number.length; i++) {

				commandMap.put("GOODS_KINDS_NUMBER", cart_kinds_number[i]);

				System.out.println(cart_kinds_number[i]);

				if (session.getAttribute("MEMBER_NUMBER") == null) {
					System.out.println("하하하");
					if (session.getAttribute("cartSession") != null) {
						cartSession = (List<Map<String, Object>>) session.getAttribute("cartSession");
						for (int j = 0; j < cartSession.size(); j++) {
							/* cartMap = new HashMap<String, Object>(); */
							cartList.put("GOODS_KINDS_NUMBER", cartSession.get(j).get("GOODS_KINDS_NUMBER"));
							cartList.put("GOODS_NUMBER", cartSession.get(j).get("GOODS_NUMBER"));

							System.out.println("GOODS_KINDS_NUMBER : " + cartSession.get(j).get("GOODS_KINDS_NUMBER"));
							System.out.println("GOODS_NUMBER : " + cartSession.get(j).get("GOODS_NUMBER"));

							cartList = orderService.sessionCartList(cartList);
							cartList.put("CART_AMOUNT", cartSession.get(j).get("CART_AMOUNT"));
							cartList1.add(cartList);

							System.out.println("호호호");
							System.out.println("cartList1 : " + cartList1.get(i));

							commandMap.put("GOODS_KINDS_NUMBER", cart_kinds_number[j]);
							commandMap.put("EA", cartList.get("CART_AMOUNT"));
							commandMap.put("GOODS_NUMBER", cartList.get("GOODS_NUMBER"));

							Map<String, Object> orderGoods = orderService.orderGoods(commandMap.getMap());

							orderGoods.put("EA", cartList.get("CART_AMOUNT"));

							goods.add(orderGoods);

							System.out.println("goods : " + goods);

							mv.addObject("ea", cartList.get("CART_AMOUNT"));

							System.out.println("sArrays : " + cartList.get("CART_AMOUNT"));

							System.out.println("commandMap : " + commandMap.getMap());

							mv.addObject("guestEmail", commandMap.get("guestEmail"));

							System.out.println("guestEmail : " + commandMap.get("guestEmail"));

							mv.addObject("goods_kinds_number", cart_kinds_number);
							mv.addObject("goods", goods);

						}
						return mv;
					}

				} else {
					cartList = orderService.selectCartOrder(commandMap.getMap());
				}
				String e = cartList.get("CART_AMOUNT").toString();
				cartList.put("EA", e);

				ea1.add(e);

				System.out.println("e : " + e);
				System.out.println("ea : " + ea1);

				goods1.add(cartList);

				System.out.println("goods : " + goods1);

				mv.addObject("GOODS_NUMBER", goods1.get(i).get("GOODS_NUMBER"));

				/*
				 * commandMap.put("GOODS_KINDS_NUMBER", cart_kinds_number[i]);
				 * commandMap.put("EA", ea[i]);
				 * 
				 * Map<String, Object> orderGoods =
				 * orderService.orderGoods(commandMap.getMap());
				 * 
				 * orderGoods.put("EA", ea[i]);
				 * 
				 * goods.add(orderGoods);
				 * 
				 * System.out.println("goods : " + goods);
				 */

			}

			String[] sArrays = ea1.toArray(new String[ea1.size()]);

			for (String s : sArrays) {
				System.out.println(s);
			}

			for (int i = 0; i < sArrays.length; i++) {

				commandMap.put("GOODS_KINDS_NUMBER", cart_kinds_number[i]);
				commandMap.put("EA", sArrays[i]);
				commandMap.put("GOODS_NUMBER", goods1.get(i).get("GOODS_NUMBER"));

				Map<String, Object> orderGoods = orderService.orderGoods(commandMap.getMap());

				orderGoods.put("EA", sArrays[i]);

				goods.add(orderGoods);

				System.out.println("goods : " + goods);

				mv.addObject("ea", sArrays[i]);

			}

			System.out.println("sArrays : " + sArrays);

			System.out.println("commandMap : " + commandMap.getMap());

			mv.addObject("guestEmail", commandMap.get("guestEmail"));

			System.out.println("guestEmail : " + commandMap.get("guestEmail"));

			mv.addObject("goods_kinds_number", cart_kinds_number);
			mv.addObject("goods", goods);

			return mv;

		}

		for (int i = 0; i < goods_kinds_number.length; i++) {

			System.out.println("ea[" + i + "] = " + ea[i]);
			commandMap.put("GOODS_NUMBER", request.getParameter("goodsno"));
			commandMap.put("GOODS_KINDS_NUMBER", goods_kinds_number[i]);
			commandMap.put("EA", ea[i]);

			Map<String, Object> orderGoods = orderService.orderGoods(commandMap.getMap());

			System.out.println("orderGoods : " + orderGoods);

			orderGoods.put("EA", ea[i]);

			goods.add(orderGoods);

			System.out.println("goods : " + goods);

		}

		mv.addObject("guestEmail", commandMap.get("guestEmail"));

		System.out.println("guestEmail : " + commandMap.get("guestEmail"));

		mv.addObject("goods_kinds_number", goods_kinds_number);
		mv.addObject("ea", ea);

		mv.addObject("GOODS_NUMBER", session.getAttribute("GOODS_NUMBER"));

		/*
		 * //주문계산표 로직시작 String
		 * pointCheck=(String)commandMap.getMap().get("pointCheck");
		 * if(pointCheck!=null)//포인트를 사용했다면 { int
		 * myPoint=(Integer)commandMap.getMap().get("myPoint"); int
		 * usePoint=(Integer)commandMap.getMap().get("usePoint");
		 * 
		 * int nowPoint=myPoint-usePoint;
		 * System.out.println("포인트계산 : "+myPoint+"-" +usePoint+"="+nowPoint); }
		 * //주문계산표 로직끝
		 */
		System.out.println("굿즈사이즈" + goods.size());

		// sale조건 충족하는지 볼것
		Calendar today = Calendar.getInstance();
		Date d = new Date(today.getTimeInMillis());

		System.out.println("asdf" + goods.get(0).get("GOODS_SALEDATE"));
		if (goods.get(0).get("GOODS_SALEDATE") != null && goods.get(0).get("GOODS_DCPRICE") != null) {
			// sale태그 조건
			Date dDay = (Date) goods.get(0).get("GOODS_SALEDATE");
			if (dDay.getTime() < d.getTime()) {
				System.out.println("거쳤다1");
				goods.remove("GOODS_SALEDATE");
				goods.remove("GOODS_DCPRICE");
			} else {
				System.out.println("거쳤다2");
				goods.get(0).put("TOTALPRICE", goods.get(0).get("TOTALDCPRICE"));
			}
		}
		// sale 끝

		mv.addObject("goods", goods);

		return mv;
	}

	@RequestMapping(value = "orderPoint")
	public ModelAndView orderPoint(CommandMap commandMap, HttpServletRequest request) throws Exception {

		ModelAndView mv = new ModelAndView("/order/changeOrderTable");

		// 주문계산표 로직시작
		// String pointCheck=(String)commandMap.getMap().get("pointCheck");
		// if(pointCheck!=null)//포인트를 사용했다면
		// {

		int myPoint = Integer.parseInt((String) commandMap.getMap().get("myPoint"));
		int usePoint = Integer.parseInt((String) commandMap.getMap().get("usePoint"));

		int nowPoint = myPoint - usePoint;
		System.out.println("포인트계산 : " + myPoint + "-" + usePoint + "=" + nowPoint);

		commandMap.put("GOODS_NUMBER", commandMap.getMap().get("GOODS_NUMBER"));
		commandMap.put("GOODS_KINDS_NUMBER", commandMap.getMap().get("GOODS_KINDS_NUMBER"));
		commandMap.put("EA", commandMap.getMap().get("EA"));
		Map<String, Object> orderGoods = orderService.orderGoods(commandMap.getMap());

		// sale조건 충족하는지 볼것
		Calendar today = Calendar.getInstance();
		Date d = new Date(today.getTimeInMillis());

		if (orderGoods.get("GOODS_SALEDATE") != null && orderGoods.get("GOODS_DCPRICE") != null) {
			// sale태그 조건
			Date dDay = (Date) orderGoods.get("GOODS_SALEDATE");
			if (dDay.getTime() < d.getTime()) {
				orderGoods.remove("GOODS_SALEDATE");
				orderGoods.remove("GOODS_DCPRICE");
			} else {
				orderGoods.put("TOTALPRICE", orderGoods.get("TOTALDCPRICE"));
			}
		}
		// sale 끝

		mv.addObject("orderGoods", orderGoods);
		mv.addObject("usePoint", usePoint);
		mv.addObject("EA", commandMap.getMap().get("EA"));
		// } 포인트체크죽임

		// 주문계산표 로직끝

		return mv;

	}

	@RequestMapping(value = "orderLogin")
	public ModelAndView orderLogin(CommandMap commandMap, HttpServletRequest request) throws Exception {

		ModelAndView mv = new ModelAndView("orderLogin");

		return mv;

	}

	@RequestMapping(value = "orderDetail")
	public ModelAndView orderDetail(CommandMap commandMap, HttpServletRequest request) throws Exception {

		ModelAndView mv = new ModelAndView("orderDetail");

		HttpSession session = request.getSession();

		commandMap.put("GOODS_NUMBER", session.getAttribute("GOODS_NUMBER"));

		System.out.println(session.getAttribute("GOODS_NUMBER"));

		if (session.getAttribute("MEMBER_NUMBER") != null) {

			commandMap.put("MEMBER_NUMBER", session.getAttribute("MEMBER_NUMBER"));

			System.out.println(session.getAttribute("MEMBER_NUMBER"));

			Map<String, Object> orderMember = orderService.orderMember(commandMap.getMap());

			mv.addObject("orderMember", orderMember);

		}

		List<Map<String, Object>> goods = new ArrayList<Map<String, Object>>();

		String[] goods_kinds_number = request.getParameterValues("kinds[]");
		String[] ea = request.getParameterValues("ea[]");
		String[] goods_number = request.getParameterValues("GOODS_NUMBER");

		for (int i = 0; i < goods_kinds_number.length; i++) {

			commandMap.put("GOODS_KINDS_NUMBER", goods_kinds_number[i]);
			commandMap.put("EA", ea[i]);
			commandMap.put("GOODS_NUMBER", goods_number[i]);

			Map<String, Object> orderGoods = orderService.orderGoods(commandMap.getMap());

			orderGoods.put("EA", ea[i]);

			goods.add(orderGoods);

			mv.addObject("usePoint", commandMap.getMap().get("POINT_POINT"));
			if (commandMap.getMap().get("POINT_POINT") == "") {
				System.out.println("야호1" + commandMap.getMap().get("POINT_POINT"));
				mv.addObject("usePoint", 0);
			}

			System.out.println("goods : " + goods);
			
			mv.addObject("goods_kinds_number", goods_kinds_number[i]);
			mv.addObject("ea", ea[i]);
			mv.addObject("GOODS_NUMBER", goods_number[i]);
			
			System.out.println("goods_kinds_number : " +  goods_kinds_number[i]);
			System.out.println("ea : " + ea[i]);
			System.out.println("GOODS_NUMBER : " + goods_number[i]);
		}

		mv.addObject("guestEmail", commandMap.get("guestEmail"));
		mv.addObject("guestName", commandMap.get("guestName"));
		mv.addObject("guestPhone", commandMap.get("guestPhone"));

		// 추가 포인트 넘겨야됨
		System.out.println(commandMap.get("POINT_POINT"));

		System.out.println("guestEmail : " + commandMap.get("guestEmail"));
		System.out.println("guestName : " + commandMap.get("guestName"));
		System.out.println("guestPhone : " + commandMap.get("guestPhone"));

		/*mv.addObject("GOODS_NUMBER", session.getAttribute("GOODS_NUMBER"));*/
		mv.addObject("goods", goods);

		// sale조건 충족하는지 볼것
		Calendar today = Calendar.getInstance();
		Date d = new Date(today.getTimeInMillis());

		System.out.println("asdf" + goods.get(0).get("GOODS_SALEDATE"));
		if (goods.get(0).get("GOODS_SALEDATE") != null && goods.get(0).get("GOODS_DCPRICE") != null) {
			// sale태그 조건
			Date dDay = (Date) goods.get(0).get("GOODS_SALEDATE");
			if (dDay.getTime() < d.getTime()) {
				System.out.println("거쳤다1");
				goods.remove("GOODS_SALEDATE");
				goods.remove("GOODS_DCPRICE");
			} else {
				System.out.println("거쳤다2");
				goods.get(0).put("TOTALPRICE", goods.get(0).get("TOTALDCPRICE"));
			}
		}
		// sale 끝



		mv.addObject("RECEIVER_NAME", commandMap.get("RECEIVER_NAME"));
		mv.addObject("RECEIVER_ZIPCODE", commandMap.get("RECEIVER_ZIPCODE"));
		mv.addObject("RECEIVER_ADDRESS1", commandMap.get("RECEIVER_ADDRESS1"));
		mv.addObject("RECEIVER_ADDRESS2", commandMap.get("RECEIVER_ADDRESS2"));
		mv.addObject("RECEIVER_PHONE", commandMap.get("RECEIVER_PHONE"));
		mv.addObject("DELIVERY_MESSAGE", commandMap.get("DELIVERY_MESSAGE"));

		return mv;
	}

	@RequestMapping(value = "/order/updatePoint")
	@ResponseBody
	public Map<String, Object> updatePoint(CommandMap commandMap, HttpServletRequest request) throws Exception {

		System.out.println("updatePoint : " + commandMap.getMap());

		orderService.updatePoint(commandMap.getMap());

		Map<String, Object> orderMember = orderService.orderMember(commandMap.getMap());

		orderMember.put("POINT_POINT", commandMap.get("POINT_POINT"));

		System.out.println("orderMember : " + orderMember);

		return orderMember;
	}

	@RequestMapping(value = "orderEnd")
	public ModelAndView orderEnd(CommandMap commandMap, HttpServletRequest request) throws Exception {

		ModelAndView mv = new ModelAndView();

		System.out.println(commandMap.getMap());

		commandMap.put("MEMBER_NUMBER", request.getParameter("MEMBER_NUMBER"));

		if (!request.getParameter("guestEmail").isEmpty()) {

			commandMap.put("BUYER_NAME", commandMap.get("guestName"));
			commandMap.put("BUYER_EMAIL", commandMap.get("guestEmail"));
			commandMap.put("BUYER_NUMBER", commandMap.get("guestPhone"));
			commandMap.put("MEMBER_NUMBER", "0");

			System.out.println("guestEmail orderEnd : " + commandMap.get("guestEmail"));
			System.out.println("guestName orderEnd : " + commandMap.get("guestName"));
			System.out.println("guestPhone orderEnd : " + commandMap.get("guestPhone"));

		}

		Map<String, Object> orderMember = orderService.orderMember(commandMap.getMap());

		System.out.println(orderMember);

		StringBuffer temp = new StringBuffer();
		Random rnd = new Random();

		for (int i = 0; i < 5; i++) {
			temp.append((char) ((int) (rnd.nextInt(26)) + 65));
		}

		List<Map<String, Object>> goods = new ArrayList<Map<String, Object>>();

		String[] goods_kinds_number = request.getParameterValues("kinds[]");
		String[] ea = request.getParameterValues("ea[]");
		String[] goods_total = request.getParameterValues("goods_total[]");
		System.out.println("굿스토탈 " + goods_total[0]);
		String[] goods_number = request.getParameterValues("GOODS_NUMBER");

		for (int i = 0; i < goods_kinds_number.length; i++) {

			commandMap.put("GOODS_KINDS_NUMBER", goods_kinds_number[i]);
			commandMap.put("EA", ea[i]);
			commandMap.put("GOODS_NUMBER", goods_number[i]);

			Map<String, Object> orderGoods = orderService.orderGoods(commandMap.getMap());

			orderGoods.put("EA", ea[i]);

			goods.add(orderGoods);

			System.out.println("goods : " + goods);

		}

		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		String date = sdf.format(d);

		String ORDER_CODE = ("S" + date + temp);

		System.out.println(ORDER_CODE);

		commandMap.put("ORDER_CODE", ORDER_CODE);

		if (orderMember != null) {

			commandMap.put("BUYER_ZIPCODE", orderMember.get("MEMBER_ZIPCODE"));
			commandMap.put("BUYER_ADDRESS1", orderMember.get("MEMBER_ADDRESS1"));
			commandMap.put("BUYER_ADDRESS2", orderMember.get("MEMBER_ADDRESS2"));
			commandMap.put("BUYER_NAME", orderMember.get("MEMBER_NAME"));
			commandMap.put("BUYER_EMAIL", orderMember.get("MEMBER_EMAIL"));
			commandMap.put("BUYER_NUMBER", orderMember.get("MEMBER_PHONE"));

		}

		if (!request.getParameter("guestEmail").isEmpty()) {

			commandMap.put("BUYER_NAME", commandMap.get("guestName"));
			commandMap.put("BUYER_EMAIL", commandMap.get("guestEmail"));
			commandMap.put("BUYER_NUMBER", commandMap.get("guestPhone"));
			commandMap.put("MEMBER_NUMBER", "");

			System.out.println("guestEmail orderEnd : " + commandMap.get("guestEmail"));
			System.out.println("guestName orderEnd : " + commandMap.get("guestName"));
			System.out.println("guestPhone orderEnd : " + commandMap.get("guestPhone"));

		}

		if (request.getParameter("DELIVERY_MESSAGE").isEmpty()) {
			commandMap.put("DELIVERY_MESSAGE", " ");
		}

		if (!request.getParameter("MEMBER_NUMBER").isEmpty()) {

			commandMap.put("GUEST_PASSWORD1", " ");
			commandMap.put("GUEST_PASSWORD2", " ");
		}

		commandMap.put("GOODS_NUMBER", request.getParameter("GOODS_NUMBER"));
		commandMap.put("RECEIVER_NAME", request.getParameter("RECEIVER_NAME"));
		commandMap.put("RECEIVER_ZIPCODE", request.getParameter("RECEIVER_ZIPCODE"));
		commandMap.put("RECEIVER_ADDRESS1", request.getParameter("RECEIVER_ADDRESS1"));
		commandMap.put("RECEIVER_ADDRESS2", request.getParameter("RECEIVER_ADDRESS2"));
		commandMap.put("RECEIVER_NUMBER", request.getParameter("RECEIVER_NUMBER"));
		commandMap.put("DELIVERY_MESSAGE", request.getParameter("DELIVERY_MESSAGE"));
		commandMap.put("RECEIVER_NUMBER", request.getParameter("RECEIVER_PHONE"));

		orderService.insertMemberDelivery(commandMap.getMap());

		for (int i = 0; i < goods_kinds_number.length; i++) {

			commandMap.put("GOODS_KINDS_NUMBER", goods_kinds_number[i]);
			commandMap.put("ORDER_AMOUNT", ea[i]);
			commandMap.put("GOODS_TOTAL", goods_total[i]);
			commandMap.put("GOODS_NUMBER", goods_number[i]);

			System.out.println("GOODS_NUMBER : " + commandMap.get("GOODS_NUMBER"));
			System.out.println("GOODS_KINDS_NUMBER : " + commandMap.get("GOODS_KINDS_NUMBER"));
			System.out.println("ORDER_AMOUNT : " + commandMap.get("ORDER_AMOUNT"));

			orderService.insertOrderList(commandMap.getMap());
			orderService.orderGoodsSell(commandMap.getMap());

		}

		if (orderMember != null) {

			mv.addObject("orderMember", orderMember);
		}

		System.out.println("TOTALPRICE : " + commandMap.get("TOTALPRICE"));

		mv.addObject("goods", goods);

		mv.addObject("goods_kinds_number", goods_kinds_number);
		mv.addObject("ea", ea);

		if (!request.getParameter("guestEmail").isEmpty()) {

			mv.addObject("BUYER_NAME", commandMap.get("guestName"));
			mv.addObject("BUYER_EMAIL", commandMap.get("guestEmail"));
			mv.addObject("BUYER_NUMBER", commandMap.get("guestPhone"));

		}

		if (commandMap.getMap().get("usePoint") != "") {
			int usePoint = Integer.parseInt((String) commandMap.getMap().get("usePoint"));
			System.out.println("야야" + usePoint);
			// int totalpoint =Integer.parseInt(goods_total[0]);

			if (usePoint != 0) {
				System.out.println("포인트가 0이 아닌것들만 적립내역DB에 들어가거라");

				int POINT_POINT = -(usePoint);

				System.out.println("POINT_POINT" + POINT_POINT);

				commandMap.getMap().put("POINT_POINT", POINT_POINT);

				orderService.updatePoint(commandMap.getMap());

			}
			
			mv.addObject("usePoint", usePoint);
		}

		mv.addObject("ORDER_CODE", ORDER_CODE);
		mv.addObject("BUYER_NUMBER", commandMap.get("BUYER_NUMBER"));
		// mv.addObject("TOTALPRICE", commandMap.get("TOTALPRICE"));
		mv.addObject("TOTALPRICE", goods_total[0]);
		mv.addObject("RECEIVER_NAME", commandMap.get("RECEIVER_NAME"));
		mv.addObject("RECEIVER_ZIPCODE", commandMap.get("RECEIVER_ZIPCODE"));
		mv.addObject("RECEIVER_ADDRESS1", commandMap.get("RECEIVER_ADDRESS1"));
		mv.addObject("RECEIVER_ADDRESS2", commandMap.get("RECEIVER_ADDRESS2"));
		mv.addObject("DELIVERY_MESSAGE", commandMap.get("DELIVERY_MESSAGE"));
		mv.addObject("RECEIVER_PHONE", commandMap.get("RECEIVER_NUMBER"));

		
		mv.setViewName("orderEnd");

		return mv;
	}
}