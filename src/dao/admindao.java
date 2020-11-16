package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import vo.BasicUser;
import vo.Houseinfo;

public class admindao {
	
	
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
	 * 添加新的用户数据
	 */
	public BasicUser adminadduserodb(Object obj) {
		
		BasicUser bu=(BasicUser) obj;
		try {
			this.initConnection();
			String sql = "insert into user(name,phone,identity,password) values(?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);

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
	 * 用户查询信息
	 * 
	 */
	public ArrayList<BasicUser> queryalluserfromdb() {
		
		ArrayList<BasicUser> list=new ArrayList<>();
		try {
			this.initConnection();
			
			String sql="select * from user";
			PreparedStatement ps=conn.prepareStatement(sql);
				
			ResultSet rs=ps.executeQuery();
			
			
			while(rs.next()) {
				BasicUser bu=new BasicUser();
				bu.setUser(rs.getString("name"));
				bu.setPhone(rs.getString("phone"));
				bu.setIdentity(rs.getString("identity"));
				bu.setPassword(rs.getString("password"));
				list.add(bu);
			}
			
			this.closeConnection();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	
	
	
	/*
	 * 删除用户数据
	 */
	public void admindelidfromdb(String id) {
		try {
			this.initConnection();
			String sql="delete from user where identity=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.executeUpdate();
			this.closeConnection();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

	}
	
	/*
	 * 更新用户信息
	 */
	public BasicUser adminupdatefromdb(BasicUser obj,String identity ) {
		
		BasicUser bu=obj;
		try {
			this.initConnection();
			String sql="update user set name=? ,phone=?, password=? where identity="+identity+"  ";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1,bu.getUser() );
			ps.setString(2, bu.getPhone());
			ps.setString(3, bu.getPassword());
			ps.executeUpdate();
			this.closeConnection();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return bu;
	}
	
	/*
	 * 添加住房信息
	 * 
	 */
	public Houseinfo adminaddHouseinfotodb(Object obj) {
		
		Houseinfo hi=(Houseinfo)obj;
		try {
			this.initConnection();
			String sql="insert into houserent(location,area,floor,rent,arrange,scale,toward,surround,decorate,buyer,phone) values(?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ps.setString(1, hi.getLocation());
			ps.setString(2, hi.getArea());
			ps.setString(3, hi.getFloor());
			ps.setString(4, hi.getRent());
			ps.setString(5, hi.getArrange());
			ps.setString(6, hi.getScale());
			ps.setString(7, hi.getToward());
			ps.setString(8, hi.getSurround());
			ps.setString(9, hi.getDecorate());
			ps.setString(10, hi.getBuyer());
			ps.setString(11, hi.getPhone());
			ps.executeUpdate();
			this.closeConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return hi;
	}
}
