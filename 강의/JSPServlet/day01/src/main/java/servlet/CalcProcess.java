package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalcProcess
 */
@WebServlet("/calcProcess")
public class CalcProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalcProcess() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		//한글 인코딩 방식 지정 및 출력스트림 객체 얻어오기
		response.setContentType("text/html;charset=utf-8");
		//출력 스트림 객체 얻기
		PrintWriter out = response.getWriter();
		
		//request객체 담겨진 전송데이터 가져오기 -> getParameter()메소드 호출 
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		String op = request.getParameter("op");
		
		//더하기 연산을 위해 num1, num2를 int 형변환
		int n1 = Integer.parseInt(num1);
		int n2 = Integer.parseInt(num2);
		
		int result = 0;
		
		switch(op) {
		case "+":
			result = n1 + n2;				
			break;
		case "-":
			result = n1 - n2;				
			break;
		case "*":
			result = n1 * n2;				
			break;
		case "/":
			result = n1 / n2;				
			break;
		}
		
		out.print(num1 + op + num2 +"=" + result);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
