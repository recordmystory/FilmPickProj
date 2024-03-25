package com.fp.noMovie.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fp.common.model.vo.Attachment;
import com.fp.movie.model.vo.Category;
import com.fp.noMovie.model.service.NoMovieService;
import com.fp.noMovie.model.vo.NoMovie;
import com.fp.person.model.vo.Person;

/**
 * Servlet implementation class NoMovieUpdateFormController
 */
@WebServlet("/updateForm.noMo")
public class NoMovieUpdateFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoMovieUpdateFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int noMovieNo = Integer.parseInt(request.getParameter("no"));
		// 없는영화 테이블에 값들 가져오는 구문
		List<NoMovie> nList = new NoMovieService().selectNoMovieAll(noMovieNo);
		// 없는영화에서 출연진 테이블에 값들 가져오는 구문
		List<Person> pList = new NoMovieService().selectNoMoviePerson(noMovieNo);
		// 없는영화에서 카테고리 테이블에 값들 가져오는 구문
		List<Category> cList = new NoMovieService().selectNoMovieCategory(noMovieNo);
		// 없는영화에서 추가적인 첨부파일 테이블에 값들 가져오는 구문
		Attachment at = new NoMovieService().selectAttachment(noMovieNo);
		
		request.setAttribute("nList", nList);
		request.setAttribute("pList", pList);
		request.setAttribute("cList", cList);
		request.setAttribute("at", at);
		request.getRequestDispatcher("/views/serviceCenter/noMovieUpdateForm.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
