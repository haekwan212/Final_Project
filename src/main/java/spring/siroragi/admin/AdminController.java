package spring.siroragi.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {
	
	//관리자페이지로 이동
	@RequestMapping(value="/admin/adminPage")
	public String list() {
		return "adminForm";
	}
}
