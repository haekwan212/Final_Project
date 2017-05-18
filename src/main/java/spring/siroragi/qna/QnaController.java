package spring.siroragi.qna;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class QnaController {

	@RequestMapping(value="/qna/qnaForm")
	public ModelAndView qnaForm(){
		ModelAndView mv=new ModelAndView("goods/qna/modal_qnaForm");
		return mv;
	}
}
