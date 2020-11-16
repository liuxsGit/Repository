package SessionListener;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import vo.BasicUser;
import vo.Houseinfo;


public class sessionlistener implements HttpSessionListener {
 
	/*
	 * sessionlistener是一个监听器，负责对session的内容进行初始化
	 * 
	 */
	@Override
	public void sessionCreated(HttpSessionEvent se) {
		
		HttpSession session=se.getSession();
		
		ArrayList<BasicUser> list=new ArrayList<BasicUser>();
		ArrayList<Houseinfo> houselist=new ArrayList<Houseinfo>();
		
		session.setAttribute("userlist", list);
		session.setAttribute("houselist", houselist);
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		// TODO Auto-generated method stub
		HttpSessionListener.super.sessionDestroyed(se);
	}
	

}
