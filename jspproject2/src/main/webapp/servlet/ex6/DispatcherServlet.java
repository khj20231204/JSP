package send;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/DispatcherServlet")
public class DispatcherServlet extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// request객체로 공유 설정
		request.setAttribute("request","requestValue");   
		
		// Dispatcher 방식으로 포워딩
		RequestDispatcher dispatcher = 
				request.getRequestDispatcher("/servlet/ex6/dispatcher.jsp");
		dispatcher.forward(request, response);
	}

}
