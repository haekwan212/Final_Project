package spring.siroragi.review;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import spring.kh.siroragi.CommandMap;

@Controller
public class ReviewController {

	@Resource(name = "reviewService")
	private ReviewService reviewService;
	
	//리뷰 폼으로 이동
	@RequestMapping(value="/review/reviewForm")
	public ModelAndView reviewForm(){
		ModelAndView mv=new ModelAndView("goods/review/modal_reviewForm");
		return mv;
	}
	
	//리뷰 등록
	@RequestMapping(value="/reviewWrite")
	public ModelAndView reviewWrite(CommandMap commandMap, HttpServletRequest request) throws Exception{
		
		System.out.println(commandMap.get("GOODS_NUMBER"));
		ModelAndView mv=new ModelAndView("redirect:goodsDetail?GOODS_NUMBER="+commandMap.get("GOODS_NUMBER"));
		
		reviewService.reviewWrite(commandMap.getMap());
		
		return mv;
	}
	
}
