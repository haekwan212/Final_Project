package spring.siroragi.ad;

import java.io.File;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import spring.kh.siroragi.CommandMap;
import spring.kh.siroragi.adPaging;

@Controller
public class AdController {

	private int searchNum;
	private Integer posting;

	private String isSearch;

	// 페이징 변수
	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 7;
	private int blockPage = 5;
	private String pagingHtml;
	private adPaging page;

	@Resource(name = "adService")
	private AdService adService;

	// 메인에서 사용할 광고 불러오기

	// 광고 내역 불러오기
	@RequestMapping(value = "/ad/adList")
	public ModelAndView adList(CommandMap commandMap, HttpServletRequest request) throws Exception {

		if (request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty()
				|| request.getParameter("currentPage").equals("0")) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		ModelAndView mv = new ModelAndView();

		List<Map<String, Object>> adList = adService.adList(commandMap.getMap());

		isSearch = request.getParameter("isSearch");

		if (isSearch != null) {

			posting = Integer.parseInt(request.getParameter("posting"));
			searchNum = Integer.parseInt(request.getParameter("searchNum"));

			System.out.println("getMap : " + commandMap.getMap());

			if (searchNum == 0) // 이름
				adList = adService.searchAdList(commandMap.getMap());

			totalCount = adList.size();
			page = new adPaging(currentPage, totalCount, blockCount, blockPage, "adList", posting, searchNum, isSearch);
			pagingHtml = page.getPagingHtml().toString();

			int lastCount = totalCount;

			if (page.getEndCount() < totalCount)
				lastCount = page.getEndCount() + 1;

			adList = adList.subList(page.getStartCount(), lastCount);

			mv.addObject("posting", posting);
			mv.addObject("isSearch", isSearch);
			mv.addObject("searchNum", searchNum);
			mv.addObject("totalCount", totalCount);
			mv.addObject("pagingHtml", pagingHtml);
			mv.addObject("currentPage", currentPage);
			mv.addObject("ad", adList);
			mv.setViewName("adList");

			return mv;

		} else {

			posting = 0;
			searchNum = 0;

			totalCount = adList.size();

			page = new adPaging(currentPage, totalCount, blockCount, blockPage, "adList", posting, searchNum, isSearch);
			pagingHtml = page.getPagingHtml().toString();

			int lastCount = totalCount;

			if (page.getEndCount() < totalCount)
				lastCount = page.getEndCount() + 1;

			adList = adList.subList(page.getStartCount(), lastCount);

			mv.addObject("posting", posting);
			mv.addObject("totalCount", totalCount);
			mv.addObject("pagingHtml", pagingHtml);
			mv.addObject("currentPage", currentPage);

			mv.addObject("ad", adList);
			mv.setViewName("adList");

			return mv;
		}
	}

	// 광고 상세정보
	@RequestMapping(value = "/ad/openAdDetail")
	public ModelAndView openMemberDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView();

		System.out.println("adDetail : " + commandMap.getMap());

		Map<String, Object> ad = adService.selectAdDetail(commandMap.getMap());

		String filePath = "C:\\Java\\App\\SIRORAGI\\src\\main\\webapp\\file\\adFile\\";

		mv.addObject("filePath", filePath);
		mv.addObject("ad", ad);
		mv.setViewName("adForm");

		return mv;
	}

	// 광고 등록 폼으로 이동
	@RequestMapping(value = "/ad/adForm")
	public String adForm() {
		return "adForm";
	}

	// 광고 등록
	@RequestMapping(value = "/ad/adWrite")
	public ModelAndView adWrite(CommandMap commandMap, HttpServletRequest request) throws Exception {

		ModelAndView mv = new ModelAndView();

		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		posting = Integer.parseInt(request.getParameter("posting"));

		MultipartFile AD_IMAGE = multipartRequest.getFile("AD_IMAGE");

		commandMap.put("AD_IMAGE", AD_IMAGE.getOriginalFilename());

		System.out.println("adWrite : " + commandMap.getMap());

		adService.adWrite(commandMap.getMap());

		String filePath = "C:\\Java\\App\\SIRORAGI\\src\\main\\webapp\\file\\adFile\\";
		String fileName = AD_IMAGE.getOriginalFilename();

		File file = new File(filePath + fileName);

		if (file.exists() == false) {
			file.mkdirs();
		}

		AD_IMAGE.transferTo(file);

		mv.setViewName("redirect:/ad/adList");

		return mv;

	}

	// 광고 수정
	@RequestMapping(value = "/ad/adModify")
	public ModelAndView adModify(CommandMap commandMap, HttpServletRequest request) throws Exception {

		ModelAndView mv = new ModelAndView();

		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		posting = Integer.parseInt(request.getParameter("posting"));

		if (multipartRequest.getFile("AD_IMAGE1").isEmpty()) {

			commandMap.put("AD_IMAGE", request.getParameter("AD_IMAGE2"));

			System.out.println("adModify : " + commandMap.getMap());

			adService.adModify(commandMap.getMap());

		} else {

			MultipartFile AD_IMAGE = multipartRequest.getFile("AD_IMAGE1");

			commandMap.put("AD_IMAGE", AD_IMAGE.getOriginalFilename());

			System.out.println("adModify : " + commandMap.getMap());

			adService.adModify(commandMap.getMap());

			String filePath = "C:\\Java\\App\\SIRORAGI\\src\\main\\webapp\\file\\adFile\\";
			String fileName = AD_IMAGE.getOriginalFilename();

			File file = new File(filePath + fileName);

			String image = request.getParameter("AD_IMAGE2");

			File imageFile = new File(filePath + image);

			System.out.println(imageFile.isFile());

			if (imageFile.isFile()) {
				imageFile.delete();
			}

			if (file.exists() == false) {
				file.mkdirs();
			}

			AD_IMAGE.transferTo(file);
		}

		mv.setViewName("redirect:/ad/adList");

		return mv;

	}

	// 광고 삭제
	@RequestMapping(value = "/ad/adDelete")
	public ModelAndView adDelete(CommandMap commandMap, HttpServletRequest request) throws Exception {

		ModelAndView mv = new ModelAndView();

		posting = Integer.parseInt(request.getParameter("posting"));
		isSearch = request.getParameter("isSearch");

		String filePath = "C:\\Java\\App\\SIRORAGI\\src\\main\\webapp\\file\\adFile\\";
		String image = request.getParameter("image");

		File imageFile = new File(filePath + image);

		System.out.println(imageFile.isFile());

		if (imageFile.isFile()) {
			imageFile.delete();
		}

		System.out.println("deleteMember : " + commandMap.getMap());

		adService.adDelete(commandMap.getMap());

		if ((Integer.parseInt(request.getParameter("posting")) == 1)) {
			mv.setViewName("redirect:/ad/adList?posting=1&searchNum=0&isSearch=");
		} else if ((Integer.parseInt(request.getParameter("posting")) == 2)) {
			mv.setViewName("redirect:/ad/adList?posting=2&searchNum=0&isSearch=");
		} else if ((Integer.parseInt(request.getParameter("posting")) == 0)) {
			mv.setViewName("redirect:/ad/adList?posting=0&searchNum=0&isSearch=");
		} else {
			mv.setViewName("redirect:/ad/adList");
		}
		return mv;

	}

}
