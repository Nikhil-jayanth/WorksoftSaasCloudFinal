package giftcard.registrationcontrollers;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import giftcard.logincontrollers.SendMail;

public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public RegisterController() {
		super();
	}
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		String firstName = request.getParameter("form-first-name");
		String lastName = request.getParameter("form-last-name");
		String emailID = request.getParameter("form-email");
		String passWord = request.getParameter("form-password");
		String NoOfUsers = request.getParameter("form-No of Users");
		
		String htmlRespone = String.format("company name:%s\n admin user id:%s\n email:%s\n password:%s\n No of Users:%s\n",firstName,lastName,emailID,passWord,NoOfUsers);
		PrintWriter out = response.getWriter();
		try{
		SendMail mail=new SendMail();
        mail.fnsendmail("worksoftsaas@qualesce.com",htmlRespone);
        out.println("success");
        response.setContentType("text/html;charset=UTF-8");
		  	request.getRequestDispatcher("Worksoftsaas.jsp").include(request, response);
		  	out.println("<script type=\"text/javascript\">");  
		  	out.println("alert('Registered successfully,login to continue');");  
		  	out.println("</script>");
		}catch(Exception ex){ex.printStackTrace();}
	}
}