package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloWorld
 */
@WebServlet(description = "My first servlet!!", urlPatterns = { "/HelloWorld" })
public class HelloWorld extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloWorld() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		//HTML 문서는 utf-8로 인코딩 됨을 지정
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		//<h3></h3>: 제목지정
		out.print("<h3>Hello World!!!</h3>");
		out.print("헬로 월드");
		
		//웹문서에 이미지를 포함하는 코드 출력
		out.print("<br><img src='./images/ELVIS.png'>");
		
		//콘솔창, 디버깅?과정?
		System.out.println("ContextPath: " + request.getContextPath());
		System.out.println("requestURL: " + request.getRequestURL());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
