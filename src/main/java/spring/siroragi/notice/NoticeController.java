package spring.siroragi.notice;

import java.io.File;
import java.util.HashMap;
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
import spring.kh.siroragi.Paging;
import spring.siroragi.notice.NoticeService;

	@Controller
	public class NoticeController {
		
		private int searchNum;

		private String isSearch;

		// 페이징 변수
		private int currentPage = 1;
		private int totalCount;
		private int blockCount = 7;
		private int blockPage = 5;
		private String pagingHtml;
		private Paging page;
		private String filePath = "C:\\Java\\App\\SIRORAGI\\src\\main\\webapp\\file\\noticeFile\\";

		@Resource(name="noticeService")
		private NoticeService noticeService;
		
		@RequestMapping(value = "/notice/noticeList")
		public ModelAndView noticeList(CommandMap commandMap, HttpServletRequest request) throws Exception {
			

			if (request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty()
					|| request.getParameter("currentPage").equals("0")) {
				currentPage = 1;
			} else {
				currentPage = Integer.parseInt(request.getParameter("currentPage"));
			}
			
			ModelAndView mv = new ModelAndView("/notice/noticeList");

			List<Map<String, Object>> noticeList = noticeService.noticeList(commandMap.getMap());

			isSearch = request.getParameter("isSearch");

			if (isSearch != null) {

				searchNum = Integer.parseInt(request.getParameter("searchNum"));

				System.out.println("getMap : " + commandMap.getMap());

				if (searchNum == 0) // 이름
					noticeList = noticeService.noticeList(commandMap.getMap());

				totalCount = noticeList.size();
				page = new Paging(currentPage, totalCount, blockCount, blockPage, "noticeList", searchNum, isSearch);
				pagingHtml = page.getPagingHtml().toString();

				int lastCount = totalCount;

				if (page.getEndCount() < totalCount)
					lastCount = page.getEndCount() + 1;

				noticeList = noticeList.subList(page.getStartCount(), lastCount);

				mv.addObject("isSearch", isSearch);
				mv.addObject("searchNum", searchNum);
				mv.addObject("totalCount", totalCount);
				mv.addObject("pagingHtml", pagingHtml);
				mv.addObject("currentPage", currentPage);
				mv.addObject("noticeList", noticeList);
				mv.setViewName("noticeList");
				return mv;

			} else {

				searchNum = 0;

				totalCount = noticeList.size();

				page = new Paging(currentPage, totalCount, blockCount, blockPage, "noticeList", searchNum, isSearch);
				pagingHtml = page.getPagingHtml().toString();

				int lastCount = totalCount;

				if (page.getEndCount() < totalCount)
					lastCount = page.getEndCount() + 1;

				noticeList = noticeList.subList(page.getStartCount(), lastCount);

				mv.addObject("totalCount", totalCount);
				mv.addObject("pagingHtml", pagingHtml);
				mv.addObject("currentPage", currentPage);

				mv.addObject("noticeList", noticeList);
				mv.setViewName("noticeList");
				return mv;
			}
		}
		
		// 공지사항 등록 폼
		@RequestMapping(value="/notice/noticeForm")
		public ModelAndView noticeForm(CommandMap commandMap) throws Exception{
			ModelAndView mv = new ModelAndView("/notice/noticeForm");
			mv.setViewName("noticeForm");
			return mv;
		}
		
		// 공지사항 등록
		@RequestMapping(value = "/notice/noticeWrite") // insert
		public ModelAndView noticeWrite(CommandMap commandMap, HttpServletRequest request) throws Exception {
		
			ModelAndView mv = new ModelAndView("redirect:/notice/noticeAdminList");

			MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;

			MultipartFile NOTICE_IMAGE = multipartRequest.getFile("NOTICE_IMAGE1");
			noticeService.noticeWrite(commandMap.getMap());
			
			System.out.println("noticeWrite : " + commandMap.getMap());
			if(!NOTICE_IMAGE.getOriginalFilename().isEmpty()){
		
			System.out.println(NOTICE_IMAGE.getOriginalFilename());
			String IMAGEExtension = NOTICE_IMAGE.getOriginalFilename().substring(NOTICE_IMAGE.getOriginalFilename().lastIndexOf("."));
			String fileName = commandMap.get("NOTICE_NUMBER").toString();

			File file = new File(filePath + fileName+ IMAGEExtension);
			
			NOTICE_IMAGE.transferTo(file);
			commandMap.put("NOTICE_IMAGE1", fileName+ IMAGEExtension);
			noticeService.noticeImage1(commandMap.getMap());
			
			}
			
			return mv;

		}
		
		// 공지사항 상세보기
		@RequestMapping(value = "/notice/noticeDetail")
		public ModelAndView openMemberDetail(CommandMap commandMap) throws Exception {
			ModelAndView mv = new ModelAndView("/notice/noticeDetail");

			System.out.println("noticeDetail : " + commandMap.getMap());

			Map<String, Object> map = noticeService.noticeDetail(commandMap.getMap());

			mv.addObject("filePath", filePath);
			mv.addObject("map", map);
			mv.setViewName("noticeDetail");

			return mv;
		}
		
		//공지사항 수정 폼
		@RequestMapping(value="/notice/noticeModifyForm")//open
		public ModelAndView noticeModifyForm(CommandMap commandMap) throws Exception{
			ModelAndView mv = new ModelAndView("/notice/noticeModifyForm");
			
			Map<String,Object> map = noticeService.noticeDetail(commandMap.getMap());
			mv.addObject("map", map);
			mv.setViewName("noticeModifyForm");

			return mv;
		}
		
		// 공지사항 수정
		@RequestMapping(value = "/notice/noticeModify")
		public ModelAndView noticeModify(CommandMap commandMap, HttpServletRequest request) throws Exception {
			ModelAndView mv = new ModelAndView();
			MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;

			if (multipartRequest.getFile("NOTICE_IMAGE1").isEmpty()) {

				commandMap.put("NOTICE_IMAGE1", request.getParameter("NOTICE_IMAGE1"));

				System.out.println("noticeModify : " + commandMap.getMap());
				
				noticeService.noticeModify(commandMap.getMap());
				
			} else {

				MultipartFile NOTICE_IMAGE = multipartRequest.getFile("NOTICE_IMAGE1");

				commandMap.put("NOTICE_IMAGE1", NOTICE_IMAGE.getOriginalFilename());

				System.out.println("noticeModify : " + commandMap.getMap());
				noticeService.noticeModify(commandMap.getMap());
				
				String IMAGEExtension = NOTICE_IMAGE.getOriginalFilename().substring(NOTICE_IMAGE.getOriginalFilename().lastIndexOf("."));
				
				String fileName = commandMap.get("NOTICE_NUMBER").toString();

				File file = new File(filePath + fileName+ IMAGEExtension);
				
				String image = request.getParameter("AD_IMAGE2");

				File imageFile = new File(filePath + image);

				System.out.println(imageFile.isFile());

				if (imageFile.isFile()) {
					imageFile.delete();
				}

				if (file.exists() == false) {
					file.mkdirs();
				}

				NOTICE_IMAGE.transferTo(file);
			}

			noticeService.noticeModify(commandMap.getMap());
			 
			mv.addObject("NOTICE_NUMBER", commandMap.get("NOTICE_NUMBER"));
			mv.setViewName("redirect:/notice/noticeAdminList");

			return mv;
		}
		
		//공지사항 삭제
		@RequestMapping(value="/notice/noticeDelete")
		public ModelAndView noticeDelete(CommandMap commandMap) throws Exception{
			ModelAndView mv = new ModelAndView("redirect:/notice/noticeAdminList");
			Map<String,Object> noticeMap=new HashMap<String,Object>(); 
			
			System.out.println("commandMap:"+commandMap.getMap());
			
			noticeMap=noticeService.noticeDetail(commandMap.getMap());
			System.out.println("commandMap2:"+noticeMap);
			System.out.println(noticeMap.get("NOTICE_IMAGE1"));
			if (noticeMap.get("NOTICE_IMAGE1") != null) {
				File removeFile = new File(filePath + noticeMap.get("NOTICE_IMAGE1"));
				System.out.println("remove" + removeFile.getAbsolutePath());
				removeFile.delete();
			}
			noticeService.noticeDelete(commandMap.getMap());
			return mv;
		}
		
		//공지사항 리스트 (Admin)
		@RequestMapping(value = "/notice/noticeAdminList")
		public ModelAndView noticeAdminList(CommandMap commandMap, HttpServletRequest request) throws Exception {
			

			if (request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty()
					|| request.getParameter("currentPage").equals("0")) {
				currentPage = 1;
			} else {
				currentPage = Integer.parseInt(request.getParameter("currentPage"));
			}
			
			ModelAndView mv = new ModelAndView("/notice/noticeAdminList");

			List<Map<String, Object>> noticeAdminList = noticeService.noticeList(commandMap.getMap());

			isSearch = request.getParameter("isSearch");

			if (isSearch != null) {

				searchNum = Integer.parseInt(request.getParameter("searchNum"));

				System.out.println("getMap : " + commandMap.getMap());

				if (searchNum == 0) // 제목
					noticeAdminList = noticeService.noticeList(commandMap.getMap());

				totalCount = noticeAdminList.size();
				page = new Paging(currentPage, totalCount, blockCount, blockPage, "noticeAdminList", searchNum, isSearch);
				pagingHtml = page.getPagingHtml().toString();

				int lastCount = totalCount;

				if (page.getEndCount() < totalCount)
					lastCount = page.getEndCount() + 1;

				noticeAdminList = noticeAdminList.subList(page.getStartCount(), lastCount);

				mv.addObject("isSearch", isSearch);
				mv.addObject("searchNum", searchNum);
				mv.addObject("totalCount", totalCount);
				mv.addObject("pagingHtml", pagingHtml);
				mv.addObject("currentPage", currentPage);
				mv.addObject("noticeList", noticeAdminList);
				mv.setViewName("noticeAdminList");

				return mv;

			} else {

				searchNum = 0;

				totalCount = noticeAdminList.size();

				page = new Paging(currentPage, totalCount, blockCount, blockPage, "noticeAdminList", searchNum, isSearch);
				pagingHtml = page.getPagingHtml().toString();

				int lastCount = totalCount;

				if (page.getEndCount() < totalCount)
					lastCount = page.getEndCount() + 1;

				noticeAdminList = noticeAdminList.subList(page.getStartCount(), lastCount);

				mv.addObject("totalCount", totalCount);
				mv.addObject("pagingHtml", pagingHtml);
				mv.addObject("currentPage", currentPage);

				mv.addObject("noticeList", noticeAdminList);
				mv.setViewName("noticeAdminList");

				return mv;
			}
		}
		
	}