package beans;

public class Member {
	private String id;
	private String pw;
	private String name;
	
	//기본생성자 정의 안해도 자동으로 만들어짐
	public Member() {
		//기본생성자
		//id, pw, name 값 지정?
		this.id="smart";
		this.pw="1234";
		this.name="홍길동";
	}
	
	//getter &setter 메소드 정의
	
	//     나가는 것이 String 타입으로 존재함-return해줘야함
	public String getId() {
		return id;
	}
	
	//     void: 나가는 것이 없다-return 안해줘도 됨
	//          setId(id): 이것을 호출해야 private String id에 접근이 가능함
	public void setId(String id) {
		//this.id: 위에 선언한 private String id;
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	//사용자가 id, pw 입력하면 호출하여 비교하는 메소드 - checkUser()
	//id, pw가 같으면 name을 return하는 checkUser() 메소드
	//다른 파일?패키지?에서 접근하려면 public 꼭 써줘야함
	public String checkUser(String id, String pw){
		String name = null;
		if(id.equals(this.id)&&pw.equals(this.pw)) {
			return this.name;
		}else {
			
		  //return name;
			return null;
		}

	}
	
	
	

}
