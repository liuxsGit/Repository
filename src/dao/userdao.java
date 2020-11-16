package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import vo.BasicUser;
import vo.Houseinfo;

public class userdao {
	
	private Connection conn=null;
	String url = "jdbc:mysql://localhost:3306/liuchaohui";
	String root = "root";
	String password ="liu112615";  

	public void initConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(url,root,password);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public void closeConnection() {
		try {
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	
	/*
	 * 登录验证板块，实现用户和数据库的自动校验-AJAX技术
	 */
	public boolean logincheckfromdb(String account) throws SQLException {	
		

		this.initConnection();
		String sql="select name from user where name=? ";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1, account);
		ResultSet rs=ps.executeQuery();
		boolean flag=false;
		if(rs.next()) {
			flag=true;
		}

		this.closeConnection();

		return flag;
	}
	
	public boolean logincheckpasswordfromdb(String password) throws SQLException {	
		

		this.initConnection();
		String sql="select password from user where password=? ";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1, password);
		ResultSet rs=ps.executeQuery();
		boolean flag=false;
		if(rs.next()) {
			flag=true;
		}

		this.closeConnection();

		return flag;
	}
	
	public boolean loginfromdb(String account,String password) throws SQLException {	
		

		this.initConnection();
		String sql="select name,password from user where name=? && password=? ";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1, account);
		ps.setString(2, password);
		ResultSet rs=ps.executeQuery();
		boolean flag=false;
		if(rs.next()) {
			flag=true;
		}

		this.closeConnection();

		return flag;
	}
	
	
	/*
	 * 注册时添加用户信息到数据库
	 */
	public BasicUser addRegistertodb(Object obj) {
		
		BasicUser bu=new BasicUser();
		bu=(BasicUser) obj;
		try {
			this.initConnection();
			String sql = "insert into user(name,phone,identity,password) values(?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			
//			ps.setInt(1, bu.getId());
			ps.setString(1, bu.getUser());
			ps.setString(2, bu.getPhone());
			ps.setString(3, bu.getIdentity());
			ps.setString(4, bu.getPassword());
			ps.executeUpdate();
			
			this.closeConnection();		
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return bu;
	}
	
	/*
	 * 用户查询、搜索住房信息
	 * 
	 */
	public ArrayList<Houseinfo> scansearchinfoandreturn(String searchkey) {
		
		ArrayList<Houseinfo> hlist=new ArrayList<Houseinfo>();
		try {
			this.initConnection();
			
			String sql="select * from houserent where location like '%"+searchkey+"%' ";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Houseinfo hi=new Houseinfo();
				hi.setLocation(rs.getString("location"));
				hi.setArea(rs.getString("area"));
				hi.setBuyer(rs.getString("buyer"));
				hi.setDecorate(rs.getString("decorate"));
				hi.setFloor(rs.getString("floor"));
				hi.setPhone(rs.getString("phone"));
				hi.setScale(rs.getString("scale"));
				hi.setToward(rs.getString("toward"));
				hi.setArrange(rs.getString("arrange"));
				hi.setSurround(rs.getString("surround"));
				hi.setRent(rs.getString("rent"));
				hlist.add(hi);
			}
			this.closeConnection();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return hlist;
	}
	
	
	/*
	 * 添加和查询评论
	 * 
	 */
	public BasicUser messageControltofromdb(Object obj){
		BasicUser bu=(BasicUser)obj;
		try {
			this.initConnection();
			String sql="insert into message(account,email,content) values(?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, bu.getUser());
			ps.setString(2, bu.getEmail());
			ps.setString(3, bu.getMessageContent());
			ps.executeUpdate();

			this.closeConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return bu;
	}
	
	public ArrayList<BasicUser> messQuery(){
		ArrayList<BasicUser> messlist=new ArrayList<BasicUser>();
		try {
			
			this.initConnection();
			String sql="select * from message";
			PreparedStatement ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				BasicUser bu=new BasicUser();
				bu.setUser(rs.getString("account"));
				bu.setEmail(rs.getString("email"));
				bu.setMessageContent(rs.getString("content"));
				messlist.add(bu);
			}
			this.closeConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return messlist;
	}
	
	
}
