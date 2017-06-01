package spring.siroragi.adminOrder;

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

@Controller
public class AdminOrderController {

	@Resource(name = "adminOrderService")
	private AdminOrderService adminOrderService;

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

		ModelAndView mv = new ModelAndView("adminOrderList");

		if (request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty()
				|| request.getParameter("currentPage").equals("0") || request.getParameter("currentPage").equals("null")) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		List<Map<String, Object>> orderList = adminOrderService.allOrderList(commandMap.getMap());

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

		/*String url = request.getRequestURL().toString();
		if (request.getQueryString() != null)
			url = url + "?" + request.getQueryString();
		System.out.println(url);*/

		return mv;

	}
	
	@RequestMapping(value = "order/orderStateModify")
	public ModelAndView orderListModify(CommandMap commandMap, HttpServletRequest request) throws Exception {
	
		ModelAndView mv = new ModelAndView();

		Map<String, Object> stateMap=new HashMap<String, Object>();
		
		String path;
		
		if(commandMap.get("currentPage")==null){
			path="orderList?currentPage=1"+commandMap.get("currentPage")+"&isSearch="+commandMap.get("isSearch")+"&searchNum="+commandMap.get("searchNum");
		} else{
			path="orderList?currentPage="+currentPage+"&isSearch="+commandMap.get("isSearch")+"&searchNum="+commandMap.get("searchNum");
		}
		if(commandMap.get("GOODS_PAY_STATE") !=null){
		
		String a=(String)commandMap.get("ORDER_CODE");
		String b=(String) commandMap.getMap().get("GOODS_PAY_STATE");
		b= new String(b.getBytes("iso-8859-1"),"utf-8");
		
		stateMap.put("GOODS_PAY_STATE", b);
		stateMap.put("ORDER_CODE", a);
		adminOrderService.updateGoodsPayState(stateMap);	
		if(stateMap.get("GOODS_PAY_STATE").equals("결제대기")){
			stateMap.put("DELIVERY_STATE", "결제대기");
		} else{
			stateMap.put("DELIVERY_STATE", "배송준비중");
		}
		adminOrderService.updateDeliveryState(stateMap);
		}
		else if(commandMap.get("DELIVERY_STATE") !=null){
			
			String a=(String)commandMap.get("ORDER_CODE");
			String b=(String) commandMap.getMap().get("DELIVERY_STATE");
			b= new String(b.getBytes("iso-8859-1"),"utf-8");
			
			stateMap.put("DELIVERY_STATE", b);
			stateMap.put("ORDER_CODE", a);
			adminOrderService.updateDeliveryState(stateMap);		
			}
		
		mv.setViewName("redirect:"+path);
		return mv;
	}


}
