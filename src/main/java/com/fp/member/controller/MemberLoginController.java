package com.fp.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fp.member.model.service.MemberService;
import com.fp.member.model.vo.Member;

/**
 * Servlet implementation class MemberLoginController
 */
@WebServlet("/login.me")
public class MemberLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public MemberLoginController() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String memId = request.getParameter("memId");
		String memPwd = request.getParameter("memPwd");
		
		Member m = new MemberService().loginMember(memId, memPwd);
		HttpSession session = request.getSession();
		if(m == null) {
			session.setAttribute("alertMsg", "로그인에 실패했습니다. 다시 입력해주세요.");
			response.sendRedirect(request.getContextPath() + "/mainpage.fp");
		}else {
			session = request.getSession();
			session.setAttribute("loginUser", m);
			System.out.println(request.getContextPath());
			response.sendRedirect(request.getContextPath() + "/mainpage.fp");

		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}