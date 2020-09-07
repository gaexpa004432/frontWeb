package com.dev.controller;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.model.MemberDAO;
import com.dev.model.MemberVO;

public class MemberInsertController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String gender = request.getParameter("gender");
		String job = request.getParameter("job");
		String mailyn = request.getParameter("mail");
		String reason = request.getParameter("reason");
		String hobby[] = request.getParameterValues("hobby");
		
		MemberVO member = new MemberVO();
		member.setId(id);
		member.setPw(pw);
		member.setGender(gender);
		member.setJob(job);
		member.setMailyn(mailyn);
		member.setReason(reason);
		member.setHobby(Arrays.toString(hobby));
		
		MemberDAO.getInstance().insert(member);
		
		//request.setAttribute("cnt", );
		
		request.getRequestDispatcher("/member/memberInsertOutput.jsp").forward(request, response);
		
		
	}

}
