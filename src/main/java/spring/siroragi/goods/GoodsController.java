package spring.siroragi.goods;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GoodsController {

	//페이지이동
	@RequestMapping(value="/goods/goodsCategory")
	public String goodsCategory() {
		return "goodsCategory";
	}
}
