package test.buy;
/** <pre>
 * <심부름>
편의점에 가서 아이스크림 '누가바'를 사오는 것
mvc방법론: https://blog.naver.com/jin_come_up/222408738163
	       https://blog.naver.com/rkdwoals159/222868635258
	       https://www.developier.com/2020/03/design-pattern-04-mvc-mvp-mvvm-3.html

mvc방법론: model, view, controller로 구성되어 있는데 model은 전달해주는 매개체?이고 controller는 model을 통해 view에 영향을 끼친다. 이때, 역방향으로 진행되진 않는다.

Model : 데이터와 관련된 책임을 담당하는 레이어
View:   사용자에게 보일 사용자 인터페이스를 담당하는 레이어
		웹에서는 웹 브라우저로 렌더링 되는 페이지가 해당된다.
		데이터, 로직은 없어야 한다.
		동적으로 처리되어야 할 데이터를 시각화해준다.
		상황과 도메인에 맞게 다른 값을 가져야 하는 데이터들에 대해서만 모델에서 받아온다.
Controller : Model과 뷰를 연결해주는 레이어
	         일종의 중계자 역할이다.
	         컨트롤러는 사용자의 요청에 맞는 서비스를 실행하게 된다.
	         처리한 Model(db) 의 값을 뷰에 반환해서 전달한다.
	         사용자의 요청을 가장먼저 마주하는 레이어 (서비스를 입력받는다.)

<꼬마(ai로봇)한테 심부름 시키는 프로그램 개발>
결과: 누가바
초기: 1000원
*데이터의 흐름(시작-끝)
<1~7 단계로 설명을 해봐라.>
(집)
1. 꼬마야 왼손(선언)
1-1. left(hand);
2. 왼손에 1000원을 쥐어준다.(대입)
2-1. left = 1000;
3. 아이스크림 사와라(명령-입력값()이 필요)
3-1. buyIcecream();
(거리)
4.편의점을 발견하고 찾아간다.
4-1. CU
(편의점)
5.점원에게 누가바를 달라고 요구한다.(명령-입력값()필요)
5-1. cu.getIcecream();
(냉동고)
6.점원이 아이스크림 '누가바'를 꺼내온다.
6-1. "누가바";
(편의점)
7.점원은 꼬마에게 아이스크림 '누가바'를 준다.(입력받은 왼손 데이터에 대한 댓가로 주는 것)
7-1. return 6번;
8.꼬마는 점원이 준 아이스크림을 오른손에 받는다.
8-1. right = 7번;
(거리)
(우리집)
9.꼬마는 오른손을 내밀어 아이스크림을 내게 준다.
9-1. right(출력);
 * @author user
 *</pre>
 */

public class TestBuy {

	public static void main(String[] args) {
		//ctrl+/: 블럭 주석
//		//꼬마를 처음만나면
//		Object hi = "Hello";
//		//인사하자
//		System.out.println(hi);
		
		//1.꼬마야 왼손 
		Object left;
		//2. 왼손에 1000원을 쥐어준다.(대입)
		left = 1000;
		//3. 아이스크림 사와라(명령-입력값()이 필요)
		//buyIcecream(left);
		//9.꼬마는 오른손을 내밀어 아이스크림을 내게 준다.
		Object right = buyIcecream(left);;
		System.out.println(right);

	}

	private static Object buyIcecream(Object left) {
		// TODO Auto-generated method stub
		//4.편의점을 발견하고 찾아간다.
		CU cu = new CU();;
		//5.점원에게 누가바를 달라고 요구한다.(명령-입력값()필요)
		//8.꼬마는 점원이 준 아이스크림을 오른손에 받는다.
		String right = cu.getIcecream(left);
		return right;
		
	}

}
