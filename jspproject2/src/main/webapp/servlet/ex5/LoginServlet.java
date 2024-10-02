package send;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();		
		
		String id=request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		if(id.equals("java") && passwd.equals("java")){
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("/servlet/ex5/loginSuccess.jsp");
			dispatcher.forward(request, response);
		}else{
			out.println("<script>");
			out.println("alert('아이디나 비밀번호가 일치하지 않습니다.')");
			out.println("history.back()");
			out.println("</script>");
			out.close();
		}
	}

}
