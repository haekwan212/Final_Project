package spring.siroragi.goods;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GoodsController {

	//페이지이동
	@RequestMapping(value="/goods/goodsList")
	public String goodsCategory() {
		return "goodsList";
	}
}
