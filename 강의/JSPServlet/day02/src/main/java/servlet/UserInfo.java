package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/userinfo")
public class UserInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public UserInfo() {

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 전송데이터에 한글 포함될 경우 인코딩 방식 지정
		request.setCharacterEncoding("utf-8");
		//2.데이터 가져오기
		String job = request.getParameter("job");
		String gender = request.getParameter("gender");
		//복수개의 데이터를 가져올 경우 getParameterValues()를 이용
		String [] hobby = request.getParameterValues("hobby");
		
		//3. HTML 출력 문서에 한글 포함할 경우 인코딩 방식 지정
		response.setContentType("text/html; charset=utf-8");
		
		//4. 출력 스트림 가져오기
		PrintWriter out =response.getWriter();
		
		//5.HTML 문서로 출력
		//out.print("<html><head><title>UserInfo</title></head>");
		out.print("<body>");

		out.print("직업: " + job + "<br>");
		out.print("성별: " + gender + "<br>");
		
		out.print("취미: ");
//		for(int i=0; i<hobby.length; i++) {
//			out.print(hobby[i]+ " ");
//		}			
		for(String h : hobby) {
			out.print(h+ " ");
		}
		out.print("</body>");
		//out.print("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
