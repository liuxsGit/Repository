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
 * Servlet implementation class adminUseraddServlet
 */
@WebServlet("/adminUseraddServlet")
public class adminUseraddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminUseraddServlet() {
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
		
		BasicUser bu=new BasicUser();
		ArrayList<BasicUser> list=new ArrayList<BasicUser>();
		
		String phone=request.getParameter("phone");
		String name=request.getParameter("user");
		String password=request.getParameter("password");
		String identity=request.getParameter("identity");
		
		bu.setPhone(phone);
		bu.setUser(name);
		bu.setPassword(password);
		bu.setIdentity(identity);
	
		admindao dao=new admindao();
		bu=dao.adminadduserodb(bu);
		list.add(bu);
	
		request.getSession().setAttribute("list", list);
		response.sendRedirect("../HouseRent/admin.jsp");
	}

}
