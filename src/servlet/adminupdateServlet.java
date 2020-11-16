package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.admindao;
import vo.BasicUser;

/**
 * Servlet implementation class adminupdateServlet
 */
@WebServlet("/adminupdateServlet")
public class adminupdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminupdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String user=request.getParameter("user");
		String phone=request.getParameter("phone");
		String identity=request.getParameter("identity");
		String password=request.getParameter("password");
		
		BasicUser bu=new BasicUser();
		ArrayList<BasicUser> list=new ArrayList<BasicUser>();
		
		bu.setPhone(phone);
		bu.setUser(user);
		bu.setPassword(password);
	
		admindao dao=new admindao();
		bu=dao.adminupdatefromdb(bu,identity);
		list.add(bu);
	
		request.getSession().setAttribute("list", list);
		response.sendRedirect("../HouseRent/admin.jsp");

	}

}
