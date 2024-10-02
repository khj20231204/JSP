package send;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RedirectServlet")
public class RedirectServlet extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// request객체로 공유 설정
		request.setAttribute("request", "requestValue");  
		
		// redirect 방식으로 포워딩
//		response.sendRedirect("servlet/ex6/redirect.jsp");
		response.sendRedirect("/jspproject2/servlet/ex6/redirect.jsp");
	}

}
