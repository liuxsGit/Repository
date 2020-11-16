package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.userdao;
import vo.BasicUser;

/**
 * Servlet implementation class userAddServlet
 */
@WebServlet("/userAddServlet")
public class userAddServlet extends HttpServlet {
	
//	private int id=1;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userAddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		ArrayList<BasicUser> list=new ArrayList<BasicUser>();
		String phone=request.getParameter("phone");
		String name=request.getParameter("user");
		String password=request.getParameter("password");
		String identity=request.getParameter("identity");
	
		BasicUser bu=new BasicUser();
		bu.setPhone(phone);
		bu.setUser(name);
		bu.setPassword(password);
		bu.setIdentity(identity);
		//这里需要添加一个计数器
//		bu.setId(id++);
	
		
		userdao dao=new userdao();
		bu=dao.addRegistertodb(bu);
		list.add(bu);
		
		
		request.getSession().setAttribute("list", list);
		PrintWriter out=response.getWriter();
		if(bu!=null) {
			out.println("注册成功");
		}
		response.sendRedirect("../HouseRent/login.jsp");
	}

}
