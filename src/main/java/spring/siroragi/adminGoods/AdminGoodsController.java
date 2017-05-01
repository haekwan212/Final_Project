package spring.siroragi.adminGoods;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import spring.kh.siroragi.CommandMap;

@Controller
public class AdminGoodsController {

	@Resource(name = "adminGoodsService")
	private AdminGoodsService adminGoodsService;

	// 상품 목록 전체 불러오기

	// 상품 등록 폼으로 이동
	@RequestMapping(value = "/goods/goodsForm")
	public String list() {
		return "goodsForm";
	}

	// 상품 등록
	@RequestMapping(value="/goods/goodsInsert")
	public ModelAndView goodsInsert(CommandMap adminGoodsMap, HttpServletRequest request) throws Exception{
		
		ModelAndView mv=new ModelAndView("redirect:/goods/goodsList");
		
		adminGoodsService.goodsInsert(adminGoodsMap.getMap(), request);
		
		return mv;
	}

	// 상품 수정

	// 상품 수정 OFF시, 장바구니와 위시리스트에서 제외

	// 상품 삭제

	// 상품 검색
}
