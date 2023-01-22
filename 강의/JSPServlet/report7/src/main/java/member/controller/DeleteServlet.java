package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.dao.MemberDAO;


@WebServlet("/deleteMember")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("username");
		String id = request.getParameter("userid");
		request.setAttribute("username", name);
		HttpSession session = request.getSession();
		session.setAttribute("deleteid", id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("deleteCheck.jsp");
		dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset = utf-8");
		HttpSession session = request.getSession();
		String userid = (String) session.getAttribute("deleteid");
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.deleteMember(userid);
		if (result == 1) {
			request.setAttribute("message", "회원정보를 삭제했습니다.");
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("allSelect");
		dispatcher.forward(request, response);
	}

}
