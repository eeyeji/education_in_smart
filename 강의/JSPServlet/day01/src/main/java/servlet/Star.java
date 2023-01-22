package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Star
 */
@WebServlet("/star")
public class Star extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Star() {
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
		
		//2. 로직 작성->요청한대로 테이블 만들기
		out.print("<html><head><title>별 찍기</title></head>");
		out.print("<body>");
		out.print("<table border>");
		for(int i=1; i<=num1;i++) {
			out.print("<tr>");
			for(int j = 1; j<=i; j++) {
				
				//방 만들기 <td></td>
				out.print("<td>*</td>");

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
