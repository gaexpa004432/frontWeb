package com.dev.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.model.MemberDAO;
import com.dev.model.MemberVO;

public class MemberDeleteController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		MemberVO member = new MemberVO();
		member.setId(id);
		
		MemberDAO.getInstance().delete(member);
		
		request.setAttribute("member1", MemberDAO.getInstance().selectAll());
		request.getRequestDispatcher("/member/memberDeleteOutput.jsp").forward(request, response);
	}

}
