package spring.siroragi.qna;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class QnaController {

	//상품 Qna등록 폼으로 이동
	@RequestMapping(value="/qna/qnaForm")
	public ModelAndView qnaForm(){
		ModelAndView mv=new ModelAndView("goods/qna/modal_qnaForm");
		return mv;
	}
}
