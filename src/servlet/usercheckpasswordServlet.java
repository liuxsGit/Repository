package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.userdao;

/**
 * Servlet implementation class usercheckpasswordServlet
 */
@WebServlet("/usercheckpasswordServlet")
public class usercheckpasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public usercheckpasswordServlet() {
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
		response.setHeader("Cache-Control", "no-cache");
		response.setContentType("text/html;charset=gb2312");
		request.setCharacterEncoding("utf-8");
		String password=request.getParameter("password");	

		
		userdao dao=new userdao();
		
		boolean flag=false;
		try {
			flag=dao.logincheckpasswordfromdb(password);
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		PrintWriter out=response.getWriter();
		if(flag) {
			out.println("√‹¬Î’˝»∑!");
		} else {
			out.println("√‹¬Î¥ÌŒÛ!");
		}

	}

}
