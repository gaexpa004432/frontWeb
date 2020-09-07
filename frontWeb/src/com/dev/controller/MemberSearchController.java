package com.dev.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.model.MemberDAO;
import com.dev.model.MemberVO;

public class MemberSearchController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		MemberVO member = new MemberVO();
		
		if(id.isEmpty()) {
			request.setAttribute("error", "id 값을입력해 주세요");
			request.getRequestDispatcher("/member/memberSearch.jsp").forward(request, response);
		}
		
		member.setId(id);
		request.setAttribute("member", MemberDAO.getInstance().selectOne(member));
		request.getRequestDispatcher("/member/memberSearchOutput.jsp").forward(request, response);
		
		
	}

}
