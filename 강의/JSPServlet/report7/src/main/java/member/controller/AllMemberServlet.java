package member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.dao.MemberDAO;
import member.dto.MemberVO;


@WebServlet("/allSelect")
public class AllMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 로그인 정보 가져오기
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset = utf-8");
		// DAO 객체 이용하여 확인
		MemberDAO mDao = MemberDAO.getInstance();
		List<MemberVO> memberlist = mDao.allSelect();
		HttpSession session = request.getSession();
		session.setAttribute("memberlist", memberlist);
		RequestDispatcher dispatcher = request.getRequestDispatcher("allMember.jsp");
		dispatcher.forward(request, response);
	}

}
