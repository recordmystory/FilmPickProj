package com.fp.admin.controller.ad_member;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fp.admin.model.service.MemberService;
import com.fp.admin.model.vo.CancelMember;
import com.fp.common.model.vo.PageInfo;
import com.google.gson.Gson;

/**
 * Servlet implementation class CancelMemberListController
 */
@WebServlet("/cclist.me")
public class CancelMemberListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CancelMemberListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		int listCount =  new MemberService().selectCancelMemberListCount();
		int currentPage = Integer.parseInt(request.getParameter("page"));
		int pageLimit = 5;
		int boardLimit = 10; 
		int maxPage = (int) Math.ceil((double) listCount / boardLimit); 
		int startPage = (currentPage-1) / pageLimit * pageLimit + 1;
		int endPage = startPage + pageLimit - 1; 
		
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		
		List<CancelMember> pageList = new MemberService().selectCancelMemberList(pi);
		
		request.setAttribute("pi", pi);
		request.setAttribute("pageList", pageList);
		
		request.getRequestDispatcher("/views/admin/ad_member/cancelMemberList.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
