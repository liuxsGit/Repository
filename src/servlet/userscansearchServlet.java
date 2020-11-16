package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.userdao;
import vo.Houseinfo;


/**
 * Servlet implementation class userscansearchServlet
 */
@WebServlet("/userscansearchServlet")
public class userscansearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userscansearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath()+"/程序运行正常");
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
	

		String searchkey=request.getParameter("search");
		System.out.println("tip");
		
		ArrayList<Houseinfo> hlist=null;
		userdao dao =new userdao();
		
		hlist=dao.scansearchinfoandreturn(searchkey);
		request.getSession().setAttribute("hlist", hlist);
		response.sendRedirect("../HouseRent/searchinfo.jsp");
	}

}
