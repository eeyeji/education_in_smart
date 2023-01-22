package com.member.beans;

import java.util.ArrayList;

//MemberBean을 관리해주는 객체?클래스?
public class MemberManager {
	//m1이라는 객체 생성
	//ArrayList 객체 m1의 타입은 <MemberBean>
	//                                     들어가도되고 안들어가도 됨
	ArrayList<MemberBean> ml= new ArrayList<MemberBean>();
	
	//멤버 추가하는 메소드 생성
	//return 타입 없을 땐 void
	public void add(MemberBean member){
		ml.add(member);
	}
	
	//ArrayList<MemberBean>을 return해줌
	public ArrayList<MemberBean> getList(){
		return ml;
	}

}
