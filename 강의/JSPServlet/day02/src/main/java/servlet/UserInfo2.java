package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserInfo2
 */
@WebServlet("/userinfo2")
public class UserInfo2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 전송데이터에 한글 포함될 경우 인코딩 방식 지정
		request.setCharacterEncoding("utf-8");
		
		//2. 데이터 가져오기
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		String[] food = request.getParameterValues("food");
		String[] interest = request.getParameterValues("interest");
		//3. HTML 문서에 한글 포함할 경우 인코딩 방식 지정
		response.setContentType("text/html; charset=utf-8");
		
		//4. 출력스트림 생성
		PrintWriter out = response.getWriter();
		
		//5. 데이터 처리 및 출력
		out.print("이름: "+name+"<br>");
		/*
		 * out.print("나이: " + age + "(");
		 * int ageInt = Integer.ParseInt(age);
		 * int result = ageInt/10; //age=22 result=2
		 * switch(result){
		 * case 2: result = 20;
		 * break;
		 * case 3:
		 * result=30;
		 * break;
		 * case 4:
		 * result=40;
		 * break;
		 * case 5:
		 * result=50;
		 * }
		 * out.print(result+"대)<br>");
		 * //result = result * 10;
		 * // <br>");
		 */
		if(age/10==1) { 
			out.print("나이: " + age + "(10대)<br>");
		}
		else if(age/10==2) {
			out.print("나이: " + age + "(20대)<br>");
		}
		else if(age/10==3) {
			out.print("나이: " + age + "(30대)<br>");
		}
		else if(age/10==4) {
			out.print("나이: " + age + "(40대)<br>");
		}
		else if(age/10==5) {
			out.print("나이: " + age + "(50대)<br>");
		}
		
		out.print("성별: " + gender + "<br>");
		
		out.print("좋아하는 음식: ");
		for(String f : food) {
			out.print(f + " ");		
		}
		out.print("<br>");
		
		out.print("관심 분야: ");		
		for(String i : interest) {

			out.print(i + " ");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
