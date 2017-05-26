package spring.siroragi.qna;

import java.io.File;
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

@Controller
public class QnaController {
	
	@Resource(name = "qnaService")
	private QnaService qnaService;
	
	@RequestMapping(value="/qna/modal_qnaForm")
	public ModelAndView modal_qanForm(){
		ModelAndView mv = new ModelAndView("goods/qna/modal_qnaForm");
		return mv;
	}
	
	@RequestMapping(value="/qna/modalqnaWrite")
	public ModelAndView modal_qnaWrite(CommandMap commandMap) throws Exception{
		String content = commandMap.get("QNA_CONTENT").toString();
		System.out.println(commandMap.getMap());
		System.out.println("상품번호"+commandMap.get("GOODS_NUMBER").toString());
		System.out.println("내용은 : "+content);
		qnaService.insertModalQna(commandMap.getMap());
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/goodsDetail?GOODS_NUMBER="+commandMap.get("GOODS_NUMBER").toString());
		return mv;
	}
	

	
	@RequestMapping(value="/qna/qnaWrite")
	public ModelAndView qnaModify(CommandMap commandMap, HttpServletRequest request) throws Exception {

		ModelAndView mv = new ModelAndView();

		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;

		if (multipartRequest.getFile("AD_IMAGE1").isEmpty()) {

			commandMap.put("AD_IMAGE", request.getParameter("AD_IMAGE2"));

			System.out.println("adModify : " + commandMap.getMap());

			qnaService.qnaModify(commandMap.getMap());

		} else {

			MultipartFile AD_IMAGE = multipartRequest.getFile("AD_IMAGE1");

			commandMap.put("AD_IMAGE", AD_IMAGE.getOriginalFilename());

			System.out.println("adModify : " + commandMap.getMap());

			qnaService.qnaModify(commandMap.getMap());

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
}
