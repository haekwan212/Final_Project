package spring.siroragi.join;

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

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import spring.kh.siroragi.CommandMap;

@Controller
public class JoinController {

	@Resource(name="joinService")
	private JoinService joinService;
		
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
	public ModelAndView joinStep2(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("joinStep2");
		return mv;
	}

	@RequestMapping(value="/joinStep1/modal_email_auth")
	public ModelAndView email_auth(HttpServletResponse response, HttpServletRequest request,CommandMap Map)throws Exception{
		System.out.println("나야나");
		/*String email = request.getParameter("email1") + "@" + request.getParameter("email2");*/
		String email = (String) Map.getMap().get("email");
		System.out.println("email = " + email);
		String authNum="";
	
		
		authNum = RandomNum();
		sendEmail(email.toString(),authNum);
		
		
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("email",email);
		mv.addObject("authNum", authNum);
		mv.setViewName("joinStep1");
		System.out.println("오드넘2"+authNum);
		return mv;
	}
	
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
		commandMap.getMap().put("MEMBER_EMAIL", MEMBER_EMAIL);
		joinService.insertMember(commandMap.getMap(), request);
		mv.setViewName("joinComplete");
		return mv;
		
	}
}
