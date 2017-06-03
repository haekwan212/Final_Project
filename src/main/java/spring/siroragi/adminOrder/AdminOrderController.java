package spring.siroragi.adminOrder;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import spring.kh.siroragi.CommandMap;
import spring.kh.siroragi.Paging;
import spring.siroragi.adminCancel.AdminCancelService;

@Controller
public class AdminOrderController {

	@Resource(name = "adminOrderService")
	private AdminOrderService adminOrderService;

	@Resource(name = "adminCancelService")
	private AdminCancelService adminCancelService;

	// 페이징 변수
	private int searchNum;
	private String isSearch;

	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 20;
	private int blockPage = 10;
	private String pagingHtml;
	private Paging page;

	@RequestMapping(value = "order/orderList")
	public ModelAndView orderList(CommandMap commandMap, HttpServletRequest request) throws Exception {

		System.out.println("map : " + commandMap.getMap());

		ModelAndView mv = new ModelAndView("adminOrderList");

		if (request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty()
				|| request.getParameter("currentPage").equals("0")
				|| request.getParameter("currentPage").equals("null")) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		List<Map<String, Object>> orderList = adminOrderService.allOrderList(commandMap.getMap());

		String s = request.getParameter("isSearch");
		Map<String, Object> isSearchMap;

		if (request.getParameterMap().get("isSearch") != null && request.getParameterMap().get("isSearch") != "") {
			isSearch = new String(s.getBytes("iso-8859-1"), "utf-8");
			isSearchMap = new HashMap<String, Object>();
			searchNum = Integer.parseInt(request.getParameter("searchNum"));
			isSearchMap.put("isSearch", isSearch);

			if (searchNum == 1)// 결제상태 검색
				orderList = adminOrderService.adminOrderSearch0(isSearchMap);
			else if (searchNum == 2)// 상품주문상태 검색
				orderList = adminOrderService.adminOrderSearch1(isSearchMap);
			else if (searchNum == 3)// 배송상태
				orderList = adminOrderService.adminOrderSearch2(isSearchMap);
			else if (searchNum == 4)// 주문코드
				orderList = adminOrderService.adminOrderSearch4(isSearchMap);
			else if (searchNum == 5)// 상품명
				orderList = adminOrderService.adminOrderSearch5(isSearchMap);
			else if (searchNum == 6)// 회원
				orderList = adminOrderService.adminOrderSearch6(isSearchMap);

			totalCount = orderList.size();
			page = new Paging(currentPage, totalCount, blockCount, blockPage, "orderList", searchNum, isSearch);
			pagingHtml = page.getPagingHtml().toString();

			int lastCount = totalCount;

			if (page.getEndCount() < totalCount)
				lastCount = page.getEndCount() + 1;

			orderList = orderList.subList(page.getStartCount(), lastCount);

			mv.addObject("isSearch", isSearch);
			mv.addObject("searchNum", searchNum);
			mv.addObject("totalCount", totalCount);
			mv.addObject("pagingHtml", pagingHtml);
			mv.addObject("currentPage", currentPage);
			mv.addObject("orderList", orderList);
			mv.setViewName("adminOrderList");
			return mv;
		}

		totalCount = orderList.size();
		page = new Paging(currentPage, totalCount, blockCount, blockPage, "orderList", searchNum, isSearch);
		pagingHtml = page.getPagingHtml().toString();

		int lastCount = totalCount;

		if (page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;

		orderList = orderList.subList(page.getStartCount(), lastCount);

		mv.addObject("totalCount", totalCount);
		mv.addObject("pagingHtml", pagingHtml);
		mv.addObject("currentPage", currentPage);

		mv.addObject("orderList", orderList);

		/*
		 * String url = request.getRequestURL().toString(); if
		 * (request.getQueryString() != null) url = url + "?" +
		 * request.getQueryString(); System.out.println(url);
		 */

		return mv;

	}

	@RequestMapping(value = "order/orderStateModify")
	public ModelAndView orderListModify(CommandMap commandMap, HttpServletRequest request) throws Exception {

		ModelAndView mv = new ModelAndView();

		Map<String, Object> stateMap = new HashMap<String, Object>();

		String path;
		System.out.println("커맨 : "+commandMap.getMap());

		if (commandMap.get("currentPage") == null) {
			if (commandMap.get("isSearch") != null && !commandMap.get("isSearch").equals("null")
					&& commandMap.get("isSearch") != "") {
				if(commandMap.get("cancel") !=null){
					System.out.println("1");
					path = "/cancel/cancelList?currentPage=1&isSearch=" + commandMap.get("isSearch") + "&searchNum="
							+ commandMap.get("searchNum");
				} else if(commandMap.get("exchange")!=null){
					System.out.println("2");
					path = "/cancel/exchangeList?currentPage=1&isSearch=" + commandMap.get("isSearch") + "&searchNum="
							+ commandMap.get("searchNum");
				} else{
					System.out.println("3");
				// System.out.println("1"+commandMap.get("isSearch").toString().length());
				path = "orderList?currentPage=1&isSearch=" + commandMap.get("isSearch") + "&searchNum="
						+ commandMap.get("searchNum");}
			} else {
				// System.out.println("2"+commandMap.get("isSearch").toString().length());
				path = "orderList?currentPage=1";
			}
		} else {
			if (commandMap.get("isSearch") != null && !commandMap.get("isSearch").equals("null")
					&& commandMap.get("isSearch") != "") {
				if(commandMap.get("cancel") !=null){
					System.out.println("4");
					path = "/cancel/cancelList?currentPage=" + commandMap.get("currentPage") + "&isSearch=" + commandMap.get("isSearch").toString()
						+ "&searchNum=" + commandMap.get("searchNum").toString();
				} else if(commandMap.get("exchange")!=null){
					System.out.println("5");
					path = "/cancel/exchangeList?currentPage=" +commandMap.get("currentPage") + "&isSearch=" + commandMap.get("isSearch").toString()
						+ "&searchNum=" + commandMap.get("searchNum").toString();
				} else{
					System.out.println("6");
				// System.out.println("1"+commandMap.get("isSearch").toString().length());
				path = "orderList?currentPage=" + commandMap.get("currentPage") + "&isSearch=" + commandMap.get("isSearch").toString()
						+ "&searchNum=" + commandMap.get("searchNum").toString();}			
			} else {
				if(commandMap.get("cancel") !=null){
					System.out.println("7");
					path = "/cancel/cancelList?currentPage=" + commandMap.get("currentPage");
				} else if(commandMap.get("exchange")!=null){
					System.out.println("8");
					path = "/cancel/exchangeList?currentPage=" + commandMap.get("currentPage");
				} else{
				// System.out.println("4"+commandMap.get("isSearch").toString().length());
				path = "orderList?currentPage=" + commandMap.get("currentPage");}
			}
		}
		// System.out.println("path : "+path);
		if (commandMap.get("GOODS_PAY_STATE") != null) {

			String a = (String) commandMap.get("ORDER_CODE");
			String b = (String) commandMap.getMap().get("GOODS_PAY_STATE");
			b = new String(b.getBytes("iso-8859-1"), "utf-8");

			stateMap.put("GOODS_PAY_STATE", b);
			stateMap.put("ORDER_CODE", a);
			adminOrderService.updateGoodsPayState(stateMap);
			if (stateMap.get("GOODS_PAY_STATE").equals("결제대기")) {
				stateMap.put("DELIVERY_STATE", "결제대기");
			} else {
				stateMap.put("DELIVERY_STATE", "배송준비중");
			}
			adminOrderService.updateDeliveryState(stateMap);
		} else if (commandMap.get("DELIVERY_STATE") != null) {

			String a = (String) commandMap.get("ORDER_CODE");
			String b = (String) commandMap.getMap().get("DELIVERY_STATE");
			b = new String(b.getBytes("iso-8859-1"), "utf-8");

			stateMap.put("DELIVERY_STATE", b);
			stateMap.put("ORDER_CODE", a);
			adminOrderService.updateDeliveryState(stateMap);
		} else if (commandMap.get("GOODS_STATE") != null) {

			String a = (String) commandMap.get("ORDER_CODE");
			String b = (String) commandMap.getMap().get("GOODS_STATE");
			b = new String(b.getBytes("iso-8859-1"), "utf-8");

			stateMap.put("GOODS_STATE", b);
			stateMap.put("ORDER_CODE", a);
			adminOrderService.updateGoodsState(stateMap);
		}

		mv.setViewName("redirect:" + path);
		return mv;
	}

	// 주문 상세보기
	@RequestMapping(value = "order/adminOrderDetail")
	public ModelAndView orderDetail(CommandMap commandMap, HttpServletRequest request) throws Exception {

		ModelAndView mv = new ModelAndView();
		List<Map<String, Object>> orderDetail = new ArrayList<Map<String, Object>>();

		orderDetail = adminOrderService.orderDetail(commandMap.getMap());
		mv.addObject("orderDetail", orderDetail);
		mv.addObject("size", orderDetail.size());
		mv.addObject("orderBasic", orderDetail.get(0));

		Map<String, Object> confirmCancel = new HashMap<String, Object>();
		confirmCancel = adminCancelService.confirmCancel(commandMap.getMap());
		if (confirmCancel != null) {
			mv.addObject("orderCancel", confirmCancel);
		}

		mv.setViewName("adminOrderDetail");
		return mv;

	}

	// 주문 삭제
	@RequestMapping(value = "order/adminOrderDelete")
	public ModelAndView adminOrderDelete(CommandMap commandMap) throws Exception {

		ModelAndView mv = new ModelAndView("redirect:orderList");

		adminOrderService.orderDelete(commandMap.getMap());

		return mv;
	}

}
