package servlet;

import java.io.IOException;

import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.admindao;
import vo.Houseinfo;

/**
 * Servlet implementation class adminHouseaddServlet
 */
@WebServlet("/adminHouseaddServlet")
public class adminHouseaddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminHouseaddServlet() {
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
		
		Houseinfo hi=new Houseinfo();
		ArrayList<Houseinfo> hlist=new ArrayList<Houseinfo>();
		
		String location=request.getParameter("location");
		String area=request.getParameter("area");
		String floor=request.getParameter("floor");
		String rent=request.getParameter("rent");
		String arrange=request.getParameter("arrange");
		String scale=request.getParameter("scale");
		String toward=request.getParameter("toward");
		String surround=request.getParameter("surround");
		String decorate=request.getParameter("decorate");
		String buyer=request.getParameter("buyer");
		String phone=request.getParameter("phone");
		
		hi.setLocation(location);
		hi.setArea(area);
		hi.setFloor(floor);
		hi.setRent(rent);
		hi.setArrange(arrange);
		hi.setScale(scale);
		hi.setToward(toward);
		hi.setSurround(surround);
		hi.setDecorate(decorate);
		hi.setBuyer(buyer);
		hi.setPhone(phone);
		
		
		admindao dao=new admindao();
		hi=dao.adminaddHouseinfotodb(hi);
		
		hlist.add(hi);
		request.getSession().setAttribute("hlist", hlist);
		
		response.sendRedirect("../HouseRent/admin.jsp");
	}

}
