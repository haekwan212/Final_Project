package spring.siroragi.cart;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CartController {

	@RequestMapping(value="/cartList")
	public ModelAndView cartList(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cartList");
		return mv;
	}
}
