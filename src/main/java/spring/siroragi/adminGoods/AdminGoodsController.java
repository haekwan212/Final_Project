package spring.siroragi.adminGoods;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
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
	private int blockCount = 20;
	private int blockPage = 10;
	private String pagingHtml;
	private Paging page;

	// 상품 목록 전체 불러오기
	@RequestMapping(value = "goods/goodsList")
	public ModelAndView goodsList(CommandMap commandMap, HttpServletRequest request) throws Exception {

		if (request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty()
				|| request.getParameter("currentPage").equals("0")) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		ModelAndView mv = new ModelAndView("goodsList");

		List<Map<String, Object>> goodsList = adminGoodsService.goodsList(commandMap.getMap());

		isSearch = request.getParameter("isSearch");
		if (isSearch != null) {
			searchNum = Integer.parseInt(request.getParameter("searchNum"));

			if (searchNum == 0)// 상품이름
				goodsList = adminGoodsService.adminGoodsSearch0(isSearch);
			else if (searchNum == 1)// 글번호
				goodsList = adminGoodsService.adminGoodsSearch1(isSearch);
			else if (searchNum == 2)// 카테고리
				goodsList = adminGoodsService.adminGoodsSearch2(isSearch);
			else if (searchNum == 3)// 판매 활성화 or 비활성화 상품 구분
				goodsList = adminGoodsService.adminGoodsSearch3(isSearch);
			else if (searchNum == 4)// 재고가 0인 상품
				goodsList = adminGoodsService.adminGoodsSearch4(isSearch);
			else if (searchNum == 5)// 판매량 많은 순, 조회수 많은 순 정렬
				goodsList = adminGoodsService.adminGoodsSearch5(isSearch);
			else if (searchNum == 6)// 판매량 많은 순, 조회수 많은 순 정렬
				goodsList = adminGoodsService.adminGoodsSearch6(isSearch);

			totalCount = goodsList.size();
			page = new Paging(currentPage, totalCount, blockCount, blockPage, "goodsList", searchNum, isSearch);
			pagingHtml = page.getPagingHtml().toString();

			int lastCount = totalCount;

			if (page.getEndCount() < totalCount)
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
		pagingHtml = page.getPagingHtml().toString();

		int lastCount = totalCount;

		if (page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;

		goodsList = goodsList.subList(page.getStartCount(), lastCount);

		mv.addObject("totalCount", totalCount);
		mv.addObject("pagingHtml", pagingHtml);
		mv.addObject("currentPage", currentPage);

		Calendar today = Calendar.getInstance();
		Date d = new Date(today.getTimeInMillis());

		for (int i = 0; i < goodsList.size(); i++) {
			if (goodsList.get(i).get("GOODS_SALEDATE") != null && goodsList.get(i).get("GOODS_DCPRICE") != null) {
				Date dDay = (Date) goodsList.get(i).get("GOODS_SALEDATE");
				if (dDay.getTime() < d.getTime()) {
					goodsList.get(i).remove("GOODS_SALEDATE");
					goodsList.get(i).remove("GOODS_DCPRICE");
				}
			}
		}

		mv.addObject("goodsList", goodsList);
		Integer count = adminGoodsService.countGoodsList();
		int a = (int) count;
		mv.addObject("count", a);

		return mv;
	}

	// 상품 등록 폼으로 이동
	@RequestMapping(value = "/goods/goodsForm")
	public String list() {
		return "goodsForm";
	}

	// 상품 등록
	@RequestMapping(value = "/goods/goodsInsert")
	public ModelAndView goodsInsert(CommandMap adminGoodsMap, HttpServletRequest request) throws Exception {

		ModelAndView mv = new ModelAndView("redirect:goodsList");

		adminGoodsService.goodsInsert(adminGoodsMap.getMap(), request);

		return mv;
	}

	// 상품 수정 폼으로 이동
	@RequestMapping(value = "goods/goodsModifyForm")
	public ModelAndView goodsModifyForm(CommandMap adminGoodsMap) throws Exception {
		ModelAndView mv = new ModelAndView("goodsModifyForm");

		List<Map<String, Object>> goodDetail = adminGoodsService.goodsModifyForm(adminGoodsMap.getMap());
		mv.addObject("goodDetail", goodDetail);
		Map<String, Object> goodBasic = goodDetail.get(0);
		
		mv.addObject("goodBasic", goodBasic);

		if (goodBasic.get("GOODS_SALEDATE") != null) {
			Date from = new Date();
			from = (Date) goodBasic.get("GOODS_SALEDATE");
			SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
			String to = transFormat.format(from);
			mv.addObject("SALEDATE", to);
		}

		List<Map<String, Object>> goodImage = adminGoodsService.goodsModifyFormImage(adminGoodsMap.getMap());
		mv.addObject("goodImage", goodImage);

		return mv;
	}

	// 상품 수정
	@RequestMapping(value = "goods/goodsModify")
	public ModelAndView goodsModify(CommandMap adminGoodsMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:goodsList");
		adminGoodsService.goodsModify(adminGoodsMap.getMap(), request);

		return mv;
	}

	// 상품 수정 OFF시, 장바구니와 위시리스트에서 제외

	// 상품 삭제
	@RequestMapping(value = "/goods/goodsDelete")
	public ModelAndView goodsDelete(CommandMap adminGoodsMap) throws Exception {

		ModelAndView mv = new ModelAndView("redirect:goodsList");

		adminGoodsService.goodsDelete(adminGoodsMap.getMap());

		return mv;
	}

	// 상품 검색
}
