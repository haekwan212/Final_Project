package spring.siroragi.header;

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
public class headerController {

	@Resource(name = "StoreService")
	private StoreService storeService;

	@RequestMapping(value = "store_locator")
	public ModelAndView store_locator(CommandMap commandMap) throws Exception {

		ModelAndView mv = new ModelAndView("store_locator");

		List<Map<String, Object>> list = storeService.storeList(commandMap.getMap());

		mv.addObject("list", list);

		return mv;
	}

	@RequestMapping(value = "store_locator_view")
	public ModelAndView store_locator_view(CommandMap commandMap, HttpServletRequest request) throws Exception {

		ModelAndView mv = new ModelAndView("store_locator_view");

		if (request.getParameter("STORE_NAME").isEmpty()) {

			mv = new ModelAndView("store_locator");

			List<Map<String, Object>> list = storeService.storeList(commandMap.getMap());

			mv.addObject("list", list);

			return mv;
		}

		commandMap.put("STORE_NAME", request.getParameter("STORE_NAME"));

		System.out.println(request.getParameter("STORE_NAME"));

		Map<String, Object> list = storeService.storeSelect(commandMap.getMap());
		
		mv.addObject("list", list);
		
		if(list == null) {
			
			mv = new ModelAndView("store_locator");
			
			List<Map<String, Object>> list1 = storeService.storeList(commandMap.getMap());

			mv.addObject("list", list1);
			
			return mv;
		}

		return mv;
	}

}
