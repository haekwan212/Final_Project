package spring.siroragi.adminGoods;

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
public class AdminGoodsController {

	@Resource(name = "adminGoodsService")
	private AdminGoodsService adminGoodsService;
	
	// 페이징 변수
	private int searchNum;
	private String isSearch;
	
	private int currentPage = 1;	 
	private int totalCount; 		 
	private int blockCount = 10;	 
	private int blockPage = 10; 	 
	private String pagingHtml;  
	private Paging page;
	

	// 상품 목록 전체 불러오기
	@RequestMapping(value="goods/goodsList")
	public ModelAndView goodsList(CommandMap commandMap, HttpServletRequest request) throws Exception{
		
		if(request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty() || request.getParameter("currentPage").equals("0")) {
            currentPage = 1;
        } else {
            currentPage = Integer.parseInt(request.getParameter("currentPage"));
        }		
		
		ModelAndView mv=new ModelAndView("goodsList");
		
		List<Map<String,Object>> goodsList=adminGoodsService.goodsList(commandMap.getMap());
		
		isSearch = request.getParameter("isSearch");
		if(isSearch != null)
		{
			searchNum = Integer.parseInt(request.getParameter("searchNum"));

			if(searchNum==0)//상품이름
				goodsList = adminGoodsService.adminGoodsSearch0(isSearch);
			else if(searchNum == 1)//글번호
				goodsList = adminGoodsService.adminGoodsSearch1(isSearch);
			else if(searchNum == 2)//카테고리
				goodsList = adminGoodsService.adminGoodsSearch2(isSearch);
			else if(searchNum == 3)//판매 활성화 or 비활성화 상품 구분
				goodsList = adminGoodsService.adminGoodsSearch3(isSearch);
			else if(searchNum == 4)//재고가 0인 상품
				goodsList = adminGoodsService.adminGoodsSearch4(isSearch);
		
			totalCount = goodsList.size();
			page = new Paging(currentPage, totalCount, blockCount, blockPage, "goodsList", searchNum, isSearch);
			pagingHtml = page.getPagingHtml().toString();
		
			int lastCount = totalCount;
		
			if(page.getEndCount() < totalCount)
				lastCount = page.getEndCount() + 1;
			
			goodsList = goodsList.subList(page.getStartCount(), lastCount);
		
			mv.addObject("isSearch", isSearch);
			mv.addObject("searchNum", searchNum);
			mv.addObject("totalCount", totalCount);
			mv.addObject("pagingHtml", pagingHtml);
			mv.addObject("currentPage", currentPage);
			mv.addObject("goodsList", goodsList);
			mv.setViewName("goodsList");
			return mv;
		}
		
		totalCount = goodsList.size();
		
		page = new Paging(currentPage, totalCount, blockCount, blockPage, "goodsList");
		pagingHtml=page.getPagingHtml().toString(); 
		

		int lastCount = totalCount;
		 
		if (page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;
		 
		goodsList = goodsList.subList(page.getStartCount(), lastCount);
		
		mv.addObject("totalCount", totalCount);
		mv.addObject("pagingHtml", pagingHtml);
		mv.addObject("currentPage", currentPage);
		
		mv.addObject("goodsList",goodsList);
		Integer count=adminGoodsService.countGoodsList();
		mv.addObject("count",count);
		
		return mv;
	}
	
	
	// 상품 등록 폼으로 이동
	@RequestMapping(value = "/goods/goodsForm")
	public String list() {
		return "goodsForm";
	}

	// 상품 등록
	@RequestMapping(value="/goods/goodsInsert")
	public ModelAndView goodsInsert(CommandMap adminGoodsMap, HttpServletRequest request) throws Exception{
		
		ModelAndView mv=new ModelAndView("redirect:goodsList");
		
		adminGoodsService.goodsInsert(adminGoodsMap.getMap(), request);
		
		return mv;
	}

	// 상품 수정

	// 상품 수정 OFF시, 장바구니와 위시리스트에서 제외

	// 상품 삭제

	// 상품 검색
}
