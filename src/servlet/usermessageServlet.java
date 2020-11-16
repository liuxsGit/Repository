package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.userdao;
import vo.BasicUser;

/**
 * Servlet implementation class usermessageServlet
 */
@WebServlet("/usermessageServlet")
public class usermessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public usermessageServlet() {
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
		String email=request.getParameter("email");
		String content=request.getParameter("message");
		
		BasicUser bu=new BasicUser();
		ArrayList<BasicUser> messlist=new ArrayList<BasicUser>();
		
		bu.setUser(user);
		bu.setEmail(email);
		bu.setMessageContent(content);
		
		userdao dao=new userdao();
		bu=dao.messageControltofromdb(bu);
		messlist.add(bu);
		request.getSession().setAttribute("messlist", messlist);
		response.sendRedirect("../HouseRent/housedetails.jsp");
	}

}
