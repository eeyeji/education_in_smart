package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LabJoin
 */
@WebServlet("/labJoin")
public class LabJoin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LabJoin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//1. 전송데이터에 한글 포함될 경우 인코딩 방식 지정
		request.setCharacterEncoding("utf-8");
		
		//2. 데이터 가져오기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String pwcheck = request.getParameter("pwcheck");
		String gender = request.getParameter("gender");
		String blood = request.getParameter("blood");
		String birth = request.getParameter("birth");
		String[] hobby = request.getParameterValues("hobby");
		String color = request.getParameter("color");
		String writes = request.getParameter("writes");

		//3. HTML 문서에 한글 포함할 경우 인코딩 방식 지정
		response.setContentType("text/html; charset=utf-8");
		
		//4. 출력스트림 생성
		PrintWriter out = response.getWriter();
		
		//5. 데이터 처리 및 출력
		out.print("아이디: "+id+"<br>");
		out.print("비밀번호: "+pw+"<br>");
		out.print("비밀번호 확인: " + pwcheck + "<br>");
		if(!pw.equals(pwcheck)) {
			out.print("비밀번호가 일치하지 않습니다");
		}
		out.print("<br>");
		out.print("성별: "+gender+"<br>");
		out.print("혈액형: "+blood+"<br>");
		out.print("생일: "+birth+"<br>");

		out.print("취미: ");
		for(String h : hobby) {
			out.print(h + " ");		
		}
		out.print("<br>");
		
		out.print("좋아하는 색: "+color+"<br>");	
		out.print("<div style='width:100px;height:100px;background:"+color+";'></div>");
		out.print("남기고 싶은 말: "+writes);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
