package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MakeGugu
 */
@WebServlet("/makeGugu")
public class MakeGugu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MakeGugu() {
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
		
		//1. 데이터 가져오기
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		
		String color = request.getParameter("color");
		
		//2. 로직 작성->요청한대로 테이블 만들기
		out.print("<html><head><title>구구단 만들기</title></head>");
		out.print("<body>");
		//                       지정한 색상 입히기
		out.print("<table border bgcolor =" + color + ">");
		
		for(int i = num1; i <= num2; i++ ) {
			out.print("<tr>");
			
			for(int j = 1; j<=9; j++) {
				//방 만들기 <td></td>
				out.print("<td>" + i + " * " + j + " = " + i * j + "</td>");
				//out.print(String.format("<td> %d x %d = %d </td>", i, j, i*j));
				}
			
			out.print("</tr>");
		}
		
		out.print("</table>");
		out.print("</body");
		out.print("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
