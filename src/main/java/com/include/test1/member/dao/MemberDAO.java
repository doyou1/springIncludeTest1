package com.include.test1.member.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.include.test1.member.vo.Member;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSession session;
	

	
	public int insertMember(Member member) {
		int check = 0;

		try {
			MemberMapper mapper = session.getMapper(MemberMapper.class);
			check = mapper.insertMember(member);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return check;
	}
	
	public Member getMemberById(String id) {
		Member isMember = null;
		
		try {
			MemberMapper mapper = session.getMapper(MemberMapper.class);
			isMember = mapper.getMemberById(id);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isMember;
	}
	
	public ArrayList<Member> getMembers(){
		ArrayList<Member> members = null;
		
		try {
			MemberMapper mapper = session.getMapper(MemberMapper.class);
			members = mapper.getMembers();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return members;
	}
}
