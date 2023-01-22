package member;

import java.sql.*;
import java.util.*;

public class DBBean {
	//멤버변수(=프로퍼티, 중간저장소)
	private String mem_id;				//아이디
	private String mem_passwd;			//패스워드
	private String mem_name;			//이름
	private String mem_nickname;		//닉네임
	private String mem_email_id;		//이메일 아이디
	private String mem_email_domain;	//이메일 도메인
	private String mem_num1;			//주민번호 앞 6자리
	private String mem_num2;			//주민번호 뒤 7자리
	private String mem_phone;			//핸드폰번호
	private String mem_gender;			//성별
	private int mem_birthday1;			//생일년도
	private int mem_birthday2;			//월
	private int mem_birthday3;			//일
	private String mem_job;				//직업
	private String zipcode;				//우편번호
	private String useraddr1;			//주소
	private String useraddr2;			//상세주소
	private String useraddr3;			//참고항목
	
	//오라클 DB에 관련된 객체 멤버변수 선언
	Connection			conn = null;
	PreparedStatement	pstmt = null;
	ResultSet			rs = null;
	
	//오라클 JDBC 연동을 하기 위한 driver, url 설정
	String jdbc_driver = "oracle.jdbc.driver.OracleDriver";
	String jdbc_url = "jdbc:oracle:thin:@localhost:1521:xe";
	
	//오라클 DB 연동 메소드 구현
	public void connect() {
		try {
			Class.forName(jdbc_driver);
			conn = DriverManager.getConnection(jdbc_url, "testdb", "testdb1234");
		}catch(Exception e) {
			System.out.println(e);
		}
	}
	
	//오라클 DB 연동 종료(자원 해제) 메소드 구현
	public void disconnect() {
		try {
			pstmt.close();
			conn.close();
			rs.close();
		}catch(Exception e) {
			System.out.println(e);
		}
	}
	
	//ID중복 체크 메소드 구현
	public int confirmId(String mem_id) {
		connect();
		int idDuplication = 0; //id 중복 여부 체크 변수
		
		try {
			String Confirmed_SELECT = "select mem_id from member where mem_id=?";
			pstmt= conn.prepareStatement(Confirmed_SELECT);
			pstmt.setString(1, mem_id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				idDuplication = 1;   //ID가 중복인 경우(사용 중인 ID)				
			}else {
				idDuplication = -1;   //사용 가능한 ID인 경우
			}
		}catch(Exception e) {
			System.out.println("confirmId(): " + e);
		}finally {
			disconnect();   //자원 해제 시키는 메소드 호출하여 처리하자!!
		}
		return idDuplication;
	} //end confirmId() ==============================================

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getMem_passwd() {
		return mem_passwd;
	}

	public void setMem_passwd(String mem_passwd) {
		this.mem_passwd = mem_passwd;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public String getMem_nickname() {
		return mem_nickname;
	}

	public void setMem_nickname(String mem_nickname) {
		this.mem_nickname = mem_nickname;
	}

	public String getMem_email_id() {
		return mem_email_id;
	}

	public void setMem_email_id(String mem_email_id) {
		this.mem_email_id = mem_email_id;
	}

	public String getMem_email_domain() {
		return mem_email_domain;
	}

	public void setMem_email_domain(String mem_email_domain) {
		this.mem_email_domain = mem_email_domain;
	}

	public String getMem_num1() {
		return mem_num1;
	}

	public void setMem_num1(String mem_num1) {
		this.mem_num1 = mem_num1;
	}

	public String getMem_num2() {
		return mem_num2;
	}

	public void setMem_num2(String mem_num2) {
		this.mem_num2 = mem_num2;
	}

	public String getMem_phone() {
		return mem_phone;
	}

	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}

	public String getMem_gender() {
		return mem_gender;
	}

	public void setMem_gender(String mem_gender) {
		this.mem_gender = mem_gender;
	}

	public int getMem_birthday1() {
		return mem_birthday1;
	}

	public void setMem_birthday1(int mem_birthday1) {
		this.mem_birthday1 = mem_birthday1;
	}

	public int getMem_birthday2() {
		return mem_birthday2;
	}

	public void setMem_birthday2(int mem_birthday2) {
		this.mem_birthday2 = mem_birthday2;
	}

	public int getMem_birthday3() {
		return mem_birthday3;
	}

	public void setMem_birthday3(int mem_birthday3) {
		this.mem_birthday3 = mem_birthday3;
	}

	public String getMem_job() {
		return mem_job;
	}

	public void setMem_job(String mem_job) {
		this.mem_job = mem_job;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getUseraddr1() {
		return useraddr1;
	}

	public void setUseraddr1(String useraddr1) {
		this.useraddr1 = useraddr1;
	}

	public String getUseraddr2() {
		return useraddr2;
	}

	public void setUseraddr2(String useraddr2) {
		this.useraddr2 = useraddr2;
	}

	public String getUseraddr3() {
		return useraddr3;
	}

	public void setUseraddr3(String useraddr3) {
		this.useraddr3 = useraddr3;
	}

	public Connection getConn() {
		return conn;
	}

	public void setConn(Connection conn) {
		this.conn = conn;
	}

	public PreparedStatement getPstmt() {
		return pstmt;
	}

	public void setPstmt(PreparedStatement pstmt) {
		this.pstmt = pstmt;
	}

	public ResultSet getRs() {
		return rs;
	}

	public void setRs(ResultSet rs) {
		this.rs = rs;
	}

	public String getJdbc_driver() {
		return jdbc_driver;
	}

	public void setJdbc_driver(String jdbc_driver) {
		this.jdbc_driver = jdbc_driver;
	}

	public String getJdbc_url() {
		return jdbc_url;
	}

	public void setJdbc_url(String jdbc_url) {
		this.jdbc_url = jdbc_url;
	}	
}








