package spring.siroragi.qna;

import java.io.File;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import spring.kh.siroragi.CommandMap;
import spring.kh.siroragi.qnaPaging;

@Controller
public class QnaController {

	@Resource(name = "qnaService")
	private QnaService qnaService;

	// 검색, 페이징
	private int searchNum;
	private int categoryNum;
	private String isSearch;

	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 15;
	private int blockPage = 15;
	private String pagingHtml;
	private qnaPaging page;

	private int ref;

	@RequestMapping(value = "/qna/modal_qnaForm")
	public ModelAndView modal_qanForm() {
		ModelAndView mv = new ModelAndView("goods/qna/modal_qnaForm");
		return mv;
	}

	@RequestMapping(value = "/qna/modalqnaWrite")
	public ModelAndView modal_qnaWrite(CommandMap commandMap) throws Exception {
		String content = commandMap.get("QNA_CONTENT").toString();
		System.out.println(commandMap.getMap());
		System.out.println("상품번호" + commandMap.get("GOODS_NUMBER").toString());
		System.out.println("내용은 : " + content);
		qnaService.insertModalQna(commandMap.getMap());
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/goodsDetail?GOODS_NUMBER=" + commandMap.get("GOODS_NUMBER").toString());
		return mv;
	}
	// Q&A 전체 글 목록 불러오기
	@RequestMapping(value = "/qna/qnaList")
	public ModelAndView qnaList(CommandMap commandMap, HttpServletRequest request) throws Exception {

		if (request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty()
				|| request.getParameter("currentPage").equals("0")) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		ModelAndView mv = new ModelAndView();
		List<Map<String, Object>> list = qnaService.qnaList(commandMap.getMap());

		isSearch = request.getParameter("isSearch");
		if (isSearch != null) {

			categoryNum = Integer.parseInt(request.getParameter("categoryNum"));
			searchNum = Integer.parseInt(request.getParameter("searchNum"));

			if (searchNum == 0) {
				commandMap.put("MEMBER_ID", isSearch);
				if (categoryNum == 0) { //아이디 검색
					commandMap.put("QNA_CATEGORY", "상품문의");
					list = qnaService.qnaSearchMemberList(commandMap.getMap());
				}
				if (categoryNum == 1) { // 상품에 해당하는 Q&A 목록 불러오기

					commandMap.put("QNA_CATEGORY", "상품문의");
					list = qnaService.qnaMemberList(commandMap.getMap());
				}
				if (categoryNum == 2) { // 배송에 해당하는 Q&A 목록 불러오기
					commandMap.put("QNA_CATEGORY", "배송문의");
					list = qnaService.qnaMemberList(commandMap.getMap());
				}
				if (categoryNum == 3) { // 입금에 해당하는 Q&A 목록 불러오기
					commandMap.put("QNA_CATEGORY", "입금문의");
					list = qnaService.qnaMemberList(commandMap.getMap());
				}
				if (categoryNum == 4) { // 교환&반품에 해당하는 Q&A 목록 불러오기
					commandMap.put("QNA_CATEGORY", "교환&반품문의");
					list = qnaService.qnaMemberList(commandMap.getMap());
				}
				if (categoryNum == 5) { // 기타에 해당하는 Q&A 목록 불러오기
					commandMap.put("QNA_CATEGORY", "기타문의");
					list = qnaService.qnaMemberList(commandMap.getMap());
				}

			}
			if (searchNum == 1) {
				commandMap.put("QNA_TITLE", isSearch);
				if (categoryNum == 0) { // 제목 검색
					commandMap.put("QNA_CATEGORY", "상품문의");
					list = qnaService.qnaSearchTitleList(commandMap.getMap());
				}
				if (categoryNum == 1) { // 상품에 해당하는 Q&A 목록 불러오기
					commandMap.put("QNA_CATEGORY", "상품문의");
					list = qnaService.qnaTitleList(commandMap.getMap());
				}
				if (categoryNum == 2) { // 배송에 해당하는 Q&A 목록 불러오기
					commandMap.put("QNA_CATEGORY", "배송문의");
					list = qnaService.qnaTitleList(commandMap.getMap());
				}
				if (categoryNum == 3) { // 입금에 해당하는 Q&A 목록 불러오기
					commandMap.put("QNA_CATEGORY", "입금문의");
					list = qnaService.qnaTitleList(commandMap.getMap());
				}
				if (categoryNum == 4) { // 교환&반품에 해당하는 Q&A 목록 불러오기
					commandMap.put("QNA_CATEGORY", "교환&반품문의");
					list = qnaService.qnaTitleList(commandMap.getMap());
				}
				if (categoryNum == 5) { // 기타에 해당하는 Q&A 목록 불러오기
					commandMap.put("QNA_CATEGORY", "기타문의");
					list = qnaService.qnaTitleList(commandMap.getMap());
				}
			}
			totalCount = list.size();
			page = new qnaPaging(currentPage, totalCount, blockCount, blockPage, "qnaList", categoryNum, searchNum,
					isSearch);
			pagingHtml = page.getPagingHtml().toString();

			int lastCount = totalCount;

			if (page.getEndCount() < totalCount)
				lastCount = page.getEndCount() + 1;

			list = list.subList(page.getStartCount(), lastCount);

			mv.addObject("categoryNum", categoryNum);
			mv.addObject("isSearch", isSearch);
			mv.addObject("searchNum", searchNum);
			mv.addObject("totalCount", totalCount);
			mv.addObject("pagingHtml", pagingHtml);
			mv.addObject("currentPage", currentPage);
			mv.addObject("list", list);
			mv.setViewName("qnaList");

			return mv;

		} else {
			totalCount = list.size();

			page = new qnaPaging(currentPage, totalCount, blockCount, blockPage, "qnaList", categoryNum, searchNum);
			pagingHtml = page.getPagingHtml().toString();

			int lastCount = totalCount;

			if (page.getEndCount() < totalCount)
				lastCount = page.getEndCount() + 1;

			list = list.subList(page.getStartCount(), lastCount);

			mv.addObject("totalCount", totalCount);
			mv.addObject("pagingHtml", pagingHtml);
			mv.addObject("currentPage", currentPage);

			mv.addObject("list", list);
			mv.setViewName("qnaList");

			return mv;
		}
	}

	// Q&A 상세보기
	@RequestMapping(value = "/qna/openQnaDetail")
	public ModelAndView qnaDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView();

		System.out.println("qnaDetail : " + commandMap.getMap());

		qnaService.selectQnaCount(commandMap.getMap());

		Map<String, Object> qna = qnaService.selectQnaDetail(commandMap.getMap());

		System.out.println(qna);

		mv.addObject("qna", qna);
		mv.setViewName("qnaDetail");

		return mv;
	}

	// Q&A 등록하기 폼으로 이동
	@RequestMapping(value = "/qna/qnaForm")
	public ModelAndView qnaForm(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();

		if (request.getParameter("QNA_NUMBER") != null) {

			Map<String, Object> qna = qnaService.selectQnaDetail(commandMap.getMap());

			mv.addObject("qna", qna);
		}
		mv.setViewName("qnaForm");
		return mv;
	}

	// Q&A 답볌 쓰기
	@RequestMapping(value = "/qna/qnaWrite")
	public ModelAndView qnaReplyWrite(CommandMap commandMap, HttpServletRequest request) throws Exception {

		ModelAndView mv = new ModelAndView();

		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;

		MultipartFile QNA_IMAGE1 = multipartRequest.getFile("QNA_IMAGE1");
		MultipartFile QNA_IMAGE2 = multipartRequest.getFile("QNA_IMAGE2");

		commandMap.put("QNA_IMAGE1", QNA_IMAGE1.getOriginalFilename());
		commandMap.put("QNA_IMAGE2", QNA_IMAGE2.getOriginalFilename());

		System.out.println("adWrite : " + commandMap.getMap());

		ref = Integer.parseInt(request.getParameter("QNA_REF"));

		System.out.println(ref);

		if (ref == 0) {

			commandMap.put("QNA_RE_STEP", 0);
			commandMap.put("QNA_RE_LEVEL", 0);

		} else {

			commandMap.put("QNA_REF", Integer.parseInt(request.getParameter("QNA_REF")));
			commandMap.put("QNA_RE_STEP", Integer.parseInt(request.getParameter("QNA_RE_STEP")));
			commandMap.put("QNA_RE_LEVEL", Integer.parseInt(request.getParameter("QNA_RE_LEVEL")));

			qnaService.updateReplyStep(commandMap.getMap());

			commandMap.put("QNA_REF", Integer.parseInt(request.getParameter("QNA_REF")));
			commandMap.put("QNA_RE_STEP", Integer.parseInt(request.getParameter("QNA_RE_STEP")) + 1);
			commandMap.put("QNA_RE_LEVEL", Integer.parseInt(request.getParameter("QNA_RE_LEVEL")) + 1);

		}

		if (ref == 0)
			qnaService.insertQna(commandMap.getMap());
		else
			qnaService.insertQnaReply(commandMap.getMap());

		String filePath = "C:\\Java\\App\\SIRORAGI\\src\\main\\webapp\\file\\qnaFile\\";
		String fileName1 = QNA_IMAGE1.getOriginalFilename();
		String fileName2 = QNA_IMAGE2.getOriginalFilename();

		File file1 = new File(filePath + fileName1);
		File file2 = new File(filePath + fileName2);

		if (file1.exists() == false) {
			file1.mkdirs();
		}
		if (file2.exists() == false) {
			file2.mkdirs();
		}

		if (!multipartRequest.getFile("QNA_IMAGE1").isEmpty() && multipartRequest.getFile("QNA_IMAGE2").isEmpty()) {
			QNA_IMAGE1.transferTo(file1);
		}
		if (multipartRequest.getFile("QNA_IMAGE1").isEmpty() && !multipartRequest.getFile("QNA_IMAGE2").isEmpty()) {
			QNA_IMAGE2.transferTo(file2);
		}
		if (!multipartRequest.getFile("QNA_IMAGE1").isEmpty() && !multipartRequest.getFile("QNA_IMAGE2").isEmpty()) {
			QNA_IMAGE1.transferTo(file1);
			QNA_IMAGE2.transferTo(file2);

		}

		mv.setViewName("redirect:/qna/qnaList");

		return mv;
	}

	// Q&A 삭제
	@RequestMapping(value = "/qna/qnaDelete")
	public ModelAndView adDelete(CommandMap commandMap, HttpServletRequest request) throws Exception {

		ModelAndView mv = new ModelAndView();

		String filePath = "C:\\Java\\App\\SIRORAGI\\src\\main\\webapp\\file\\qnaFile\\";
		String image1 = null;
		String image2 = null;

		boolean a;
		boolean b;
		boolean c;

		a = request.getParameter("QNA_IMAGE1") != null && request.getParameter("QNA_IMAGE2").isEmpty();
		b = request.getParameter("QNA_IMAGE2") != null && request.getParameter("QNA_IMAGE1").isEmpty();
		c = request.getParameter("QNA_IMAGE2") != null && request.getParameter("QNA_IMAGE1") != null;

		System.out.println(a);
		System.out.println(b);
		System.out.println(c);

		if (request.getParameter("QNA_IMAGE1") != null && request.getParameter("QNA_IMAGE2").isEmpty()) {
			image1 = request.getParameter("QNA_IMAGE1");
		}
		if (request.getParameter("QNA_IMAGE2") != null && request.getParameter("QNA_IMAGE1").isEmpty()) {
			image1 = request.getParameter("QNA_IMAGE2");
		}
		if (request.getParameter("QNA_IMAGE2") != null && request.getParameter("QNA_IMAGE1") != null) {
			image1 = request.getParameter("QNA_IMAGE1");
			image2 = request.getParameter("QNA_IMAGE2");

			File imageFile1 = new File(filePath + image1);
			File imageFile2 = new File(filePath + image2);

			System.out.println(imageFile1.isFile());
			System.out.println(imageFile2.isFile());

			if (imageFile1.isFile()) {
				imageFile1.delete();
			}
			if (imageFile2.isFile()) {
				imageFile2.delete();
			}
		}

		if (request.getParameter("categoryNum").isEmpty()) {
			categoryNum = 0;
		} else {
			categoryNum = Integer.parseInt(request.getParameter("categoryNum"));
		}
		isSearch = request.getParameter("isSearch");

		System.out.println("deleteQNA : " + commandMap.getMap());

		qnaService.qnaDelete(commandMap.getMap());

		if (categoryNum == 1) {
			mv.setViewName("redirect:/qna/qnaList?categoryNum=1&searchNum=0&isSearch=");
		} else if (categoryNum == 2) {
			mv.setViewName("redirect:/qna/qnaList?categoryNum=2&searchNum=0&isSearch=");
		} else if (categoryNum == 3) {
			mv.setViewName("redirect:/qna/qnaList?categoryNum=3&searchNum=0&isSearch=");
		} else if (categoryNum == 4) {
			mv.setViewName("redirect:/qna/qnaList?categoryNum=4&searchNum=0&isSearch=");
		} else if (categoryNum == 5) {
			mv.setViewName("redirect:/qna/qnaList?categoryNum=5&searchNum=0&isSearch=");
		} else {
			mv.setViewName("redirect:/qna/qnaList");
		}
		return mv;

	}

	// Q&A 답변 삭제
	@RequestMapping(value = "/qna/qnaReplyDelete")
	public ModelAndView qnaReplyDelete(CommandMap commandMap, HttpServletRequest request) throws Exception {

		ModelAndView mv = new ModelAndView();

		String filePath = "C:\\Java\\App\\SIRORAGI\\src\\main\\webapp\\file\\qnaFile\\";
		String image1 = null;
		String image2 = null;

		boolean a;
		boolean b;
		boolean c;

		a = request.getParameter("QNA_IMAGE1") != null && request.getParameter("QNA_IMAGE2").isEmpty();
		b = request.getParameter("QNA_IMAGE2") != null && request.getParameter("QNA_IMAGE1").isEmpty();
		c = request.getParameter("QNA_IMAGE2") != null && request.getParameter("QNA_IMAGE1") != null;

		System.out.println(a);
		System.out.println(b);
		System.out.println(c);

		if (request.getParameter("QNA_IMAGE1") != null && request.getParameter("QNA_IMAGE2").isEmpty()) {
			image1 = request.getParameter("QNA_IMAGE1");
		}
		if (request.getParameter("QNA_IMAGE2") != null && request.getParameter("QNA_IMAGE1").isEmpty()) {
			image1 = request.getParameter("QNA_IMAGE2");
		}
		if (request.getParameter("QNA_IMAGE2") != null && request.getParameter("QNA_IMAGE1") != null) {
			image1 = request.getParameter("QNA_IMAGE1");
			image2 = request.getParameter("QNA_IMAGE2");

			File imageFile1 = new File(filePath + image1);
			File imageFile2 = new File(filePath + image2);

			System.out.println(imageFile1.isFile());
			System.out.println(imageFile2.isFile());

			if (imageFile1.isFile()) {
				imageFile1.delete();
			}
			if (imageFile2.isFile()) {
				imageFile2.delete();
			}
		}
		if (request.getParameter("categoryNum").isEmpty()) {
			categoryNum = 0;
		} else {
			categoryNum = Integer.parseInt(request.getParameter("categoryNum"));
		}
		isSearch = request.getParameter("isSearch");

		System.out.println("qnaReplyDelete : " + commandMap.getMap());

		qnaService.qnaReplyDelete(commandMap.getMap());

		if (categoryNum == 1) {
			mv.setViewName("redirect:/qna/qnaList?categoryNum=1&searchNum=0&isSearch=");
		} else if (categoryNum == 2) {
			mv.setViewName("redirect:/qna/qnaList?categoryNum=2&searchNum=0&isSearch=");
		} else if (categoryNum == 3) {
			mv.setViewName("redirect:/qna/qnaList?categoryNum=3&searchNum=0&isSearch=");
		} else if (categoryNum == 4) {
			mv.setViewName("redirect:/qna/qnaList?categoryNum=4&searchNum=0&isSearch=");
		} else if (categoryNum == 5) {
			mv.setViewName("redirect:/qna/qnaList?categoryNum=5&searchNum=0&isSearch=");
		} else {
			mv.setViewName("redirect:/qna/qnaList");
		}
		return mv;

	}

}
