package com.include.test1.member.dao;

import java.util.ArrayList;

import com.include.test1.member.vo.Member;

public interface MemberMapper {

	public int insertMember(Member member);
	public Member getMemberById(String id);
	public ArrayList<Member> getMembers();
}
