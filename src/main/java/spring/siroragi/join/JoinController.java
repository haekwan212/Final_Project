package spring.siroragi.join;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.annotation.Resource;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import spring.kh.siroragi.CommandMap;
import spring.siroragi.point.PointService;

@Controller
public class JoinController {
	
	String authNUm = "";

	@Resource(name="joinService")
	private JoinService joinService;
	
	@Resource(name="pointService")
	private PointService pointService;
		
	@RequestMapping(value="/joinStep1")
	public ModelAndView joinStep1(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("joinStep1");
		return mv;
	}
	
	@RequestMapping(value="/joinStep1/modal_email")
	public ModelAndView modal_email(){
		ModelAndView mv = new ModelAndView("modal_email");
		return mv;
	}
	
	@RequestMapping(value="/joinStep2")
	public ModelAndView joinStep2(HttpSession session,HttpServletResponse response, HttpServletRequest request,CommandMap Map){
		ModelAndView mv = new ModelAndView();
		String email1 = (String) Map.getMap().get("email1");
		String email2 = (String) Map.getMap().get("email2");
		System.out.println(email1 +"@"+email2);
		mv.setViewName("joinStep2");
		session.setAttribute("email1",email1);
		session.setAttribute("email2",email2);
/*		mv.addObject("email1",email1);
		mv.addObject("email2",email2);*/
		return mv;
	}
	
	@RequestMapping(value="/checkId")
	@ResponseBody
	public void checkId(HttpServletRequest request, HttpServletResponse response, CommandMap commandMap) throws Exception{
		PrintWriter out = response.getWriter();
		String paramId= (request.getParameter("MEMBER_ID") == null)?"":String.valueOf(request.getParameter("MEMBER_ID"));
		int checkId = joinService.chekcId(paramId);
		
		out.print(checkId);
		out.flush();
		out.close();
	}

	@RequestMapping(value="/joinStep1/modal_email_auth")
	public ModelAndView email_auth(HttpServletResponse response, HttpServletRequest request,CommandMap Map)throws Exception{
		System.out.println("나야나");
		//String email = request.getParameter("email1") + "@" + request.getParameter("email2");
		String email = (String) Map.getMap().get("email");
		System.out.println("email = " + email);
		Map.getMap().put("MEMBER_EMAIL", email);
		
		int checkNum = joinService.checkMember(Map.getMap());
		System.out.println("checkNum="+checkNum);
		
		if(checkNum==0)
		{
		authNUm = RandomNum();
		sendEmail(email.toString(),authNUm);
		System.out.println("메일보냄");
		}
		String checkNumString=String.valueOf(checkNum);
		PrintWriter writer =response.getWriter();
		writer.write(checkNumString);
		writer.flush();
		writer.close();
		
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("email",email);
		mv.addObject("authNum", authNUm);
		mv.setViewName("joinStep1");
		
		System.out.println("오드넘"+authNUm);
		return mv;
	}
	
/*	@RequestMapping(value = "/sample/ajax/test.jws", method=RequestMethod.GET )
	 public ModelAndView ajaxTestMethod(HttpServletRequest req, HttpServletResponse res ) throws Exception {
	  return new ModelAndView("sample/ajaxtest");
	 }
	 */
	  /**
	     * Ajax - @ResponseBody 어노테이션을 이용해 보자.
	     * @param request
	     * @returnf
	     * @throws Exception
	     */
	    @RequestMapping(value="/joinStep1/modal_email_auth_success", method=RequestMethod.POST)
	    public @ResponseBody String clickMethod (HttpServletRequest request) throws Exception   {
	         
	        String str = authNUm;
	         System.out.println("authNUm뭐냐?"+authNUm);
	        return str;
	    }
	     /*
		    @RequestMapping(value="sample/ajax/click.jws", method=RequestMethod.POST)
		    public @ResponseBody String clickMethod (HttpServletRequest request) throws Exception   {
		         
		        String str = authNUm;
		         System.out.println("authNUm뭐냐 ?"+authNUm);
		        return str;
		    }
	*/

	private void sendEmail(String email,String authNum){
		String host ="smtp.gmail.com";
		String subject = "SIRORAGI 인증 번호 전달";
		String fromName ="SIRORAGI 관리자";
		String from="siroragi@gmail.com";//보내는메일
		String to1 = email;
		
		String content = "인증번호[" + authNum +"]";
		
		try{
			Properties props = new Properties();
			
			props.put("mail.smtp,starttls.enable","true");
			props.put("mail.transport.protocol", "smtp");
			props.put("mail.smtp.host",host);
			props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			
			props.put("mail.smtp.port", "465");
			props.put("mail.smtp.user", from);
			props.put("mail.smtp.auth", "true");
			
			Session mailSession = Session.getInstance(props,new javax.mail.Authenticator(){
					protected PasswordAuthentication getPasswordAuthentication(){
				return new PasswordAuthentication("siroragi@gmail.com","sirorgi3");
			}
			});
			Message msg = new MimeMessage(mailSession);
			msg.setFrom(new InternetAddress(from,MimeUtility.encodeText(fromName,"UTF-8","B"))); //보내는사람설정
			
			InternetAddress[] address1 = {new InternetAddress(to1)};
			
			msg.setRecipients(Message.RecipientType.TO, address1); //받는사람설정1
			msg.setSubject(subject); //제목설정
			msg.setSentDate(new java.util.Date()); //보내는 날짜설정
			msg.setContent(content,"text/html;charset=utf-8"); //내용설정
			
			Transport.send(msg);
		}catch (MessagingException e) {
			e.printStackTrace();
		}catch (Exception e) {
			e.printStackTrace();
			
		}
	}
	
	
	public String RandomNum(){
		StringBuffer buffer = new StringBuffer();
		for(int i = 0;i<=6;i++){
			int n= (int)(Math.random() * 10);
			buffer.append(n);
		}
		return buffer.toString();
	}
	//이메일인증 추가 여기까지

	@RequestMapping(value="/joinComplete", method=RequestMethod.POST)
	public ModelAndView joinComplete(CommandMap commandMap, HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView();
		String MEMBER_EMAIL = request.getParameter("MEMBER_EMAIL1")+"@"+request.getParameter("MEMBER_EMAIL2");
		Map<String, Object> memberMap=new HashMap<String, Object>();
		commandMap.getMap().put("MEMBER_EMAIL", MEMBER_EMAIL);
		memberMap=commandMap.getMap();
		joinService.insertMember(memberMap, request);
		pointService.joinPoint(memberMap);
		mv.setViewName("joinComplete");
		return mv;
		
	}
}

