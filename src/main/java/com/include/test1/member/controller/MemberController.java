package com.include.test1.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.include.test1.member.dao.MemberDAO;
import com.include.test1.member.vo.Member;

@Controller
@RequestMapping(value="/member")
public class MemberController {

	@Autowired
	private MemberDAO dao;
	
	@RequestMapping(value="/join",method=RequestMethod.POST)
	public String join(Member member, HttpSession session) {
		System.out.println("member : " + member);		
		int check = 0;
		if(member != null) {
			check = dao.insertMember(member);
			
			if(check > 0) {
				System.out.println("INSERT MEMBER SUCCESS");
			}
		}
		
		session.setAttribute("userId", member.getId());
		session.setAttribute("userName", member.getName());
		return "redirect:/";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	@ResponseBody
	public boolean login(Member member,HttpSession session) {
		System.out.println("member : " + member);
		if(member.getId() != null) {
			String id = member.getId();
			String pw = member.getPw();
			Member isMember = dao.getMemberById(id);
			
			if(isMember != null) {
				if(isMember.getPw().equalsIgnoreCase(pw)){
					session.setAttribute("userId", isMember.getId());
					session.setAttribute("userName", isMember.getName());
					
					return true;
				}else {
					return false;
				}
			}
		}
		
		return false;
	}
	
	
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public String logout(HttpSession session) {
		
		
		session.removeAttribute("userId");
		session.removeAttribute("userName");
		return "redirect:/";
	}
	
	
	@RequestMapping(value="/getMember",method=RequestMethod.GET)
	public Member getMember(HttpSession session) {
		Member member = null;
		
		String userId = (String) session.getAttribute("userId");
		
		member = dao.getMemberById(userId);
		System.out.println(member);
		member.setPw("");
		
		return member;
	}
}
