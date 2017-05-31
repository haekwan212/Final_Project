package spring.siroragi.adminOrder;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import spring.kh.siroragi.CommandMap;

@Controller
public class AdminOrderController {

	@Resource(name="adminOrderService")
	private AdminOrderService adminOrderService;
	
	@RequestMapping(value="order/orderList")
	public ModelAndView orderList(CommandMap commandMap, HttpServletRequest request) throws Exception{
		
		ModelAndView mv = new ModelAndView("adminOrderList");
		
		List<Map<String, Object>> orderList = adminOrderService.allOrderList(commandMap.getMap());
		
		mv.addObject("orderList",orderList);
		return mv;
		
	}
	
}
