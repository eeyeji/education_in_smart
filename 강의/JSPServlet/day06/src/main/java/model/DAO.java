package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
//DAO: 연결, 처리, 자원반환을 해줌
public class DAO {
	private Connection conn = null;
	//컴파일 타임에서 값이 다 셋팅되었을 때 사용
	private Statement stmt = null;
	
	//내부적으로 수정해야하는 경우 사용
	//실행시점에서 값이 변경되어야 하는 
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	//커넥션을 위한 메소드 정의
	public String getConnection(){
		String message = "fail";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/webdb?"
							+"useUnicode=true&characterEncoding=utf-8";
			String uid = "root";
			String pass = "tbrs00002b";
			conn = DriverManager.getConnection(url, uid, pass);
			//연결 성공
			message="success";
		  //데이터 처리	
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			
			//자원반환은 따로 분리시켜주기
			
		}//finally의 끝
		return message;
	}
	
	//JoinServlet에서 dao.insert(vo) 쓰기위해
	public int insert(MemberVO vo) {
		int rowCnt = 0;
		
		
		
		//(3 단계) Statement 객체 생성하기
		try {
			String sql = "insert into member values(?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			
			//(4 단계) 바인딩 변수를 채운다.
			//순서 바뀌면 db 테이블 형성할때 오류 발생?
			pstmt.setString(1, vo.getName());
			pstmt.setString(2, vo.getUserid());
			pstmt.setString(3, vo.getPwd());
			pstmt.setString(4, vo.getEmail());
			pstmt.setString(5, vo.getPhone());
			pstmt.setInt(6, vo.getAdmin());
			//(5단계) SQL문을 실행하여 결과 처리
			rowCnt = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return rowCnt;
	}
	
	//자원반환은 따로 분리시켜주기
	public void getClose() {
		try {
			
			//자원 반환
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public MemberVO loginCheck(MemberVO vo) {
		MemberVO result = null;
		
		
		try {
			String sql = "select * from member where userid=? and pwd=?";
			pstmt = conn.prepareStatement(sql);
			//(4 단계) 바인딩 변수를 채운다.
			//순서 바뀌면 db 테이블 형성할때 오류 발생?
			pstmt.setString(1, vo.getUserid());
			pstmt.setString(2, vo.getPwd());
			//실행문
			ResultSet rs = pstmt.executeQuery();
			
			//rs.next가 true라는 뜻은 id,pwd와 같은 값이 있다는 뜻
			while(rs.next()) {
				
				String id = rs.getString("userid");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String phone = rs.getString("phone");
				int admin = rs.getInt("admin");
				
				result = new MemberVO(name, id, pwd, email, phone, admin);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return result;
	}

	
}
