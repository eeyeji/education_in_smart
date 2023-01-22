package addr.beans;

public class Member {
	private String id;
	private String pwd;
	private String name;
	
	public Member() {
		this.id = "smart";
		this.pwd = "1234";
		this.name = "홍길동";
		//기본 생성자
	}

	// getter/setter 메소드 정의
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	//id, pwd 같으면 name return 하는 checkUser() 메소드
	public String checkUser(String id, String pwd){
		String name = null;
		if (id.equals(this.id) && pwd.equals(this.pwd)) {
			return this.name;
		} else return name;
	}
	
}
