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
 * Servlet implementation class userCheckServlet
 */
@WebServlet("/userCheckServlet")
public class userCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userCheckServlet() {
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
		String account=request.getParameter("account");	

		
		userdao dao=new userdao();
		
		boolean flag=false;
		try {
			flag=dao.logincheckfromdb(account);
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		PrintWriter out=response.getWriter();
		if(flag) {
			out.println("欢迎"+account+"!");
		} else {
			out.println("该账户不存在，您必须先注册!");
		}

	}

}
