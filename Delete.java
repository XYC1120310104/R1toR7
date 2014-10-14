package web;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.*;
import java.util.*;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import web.Bookbean;

public class Delete extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static Connection connection = null;
	private static Statement statement ;
	private static ResultSet resultSet;
	private String Title;
	private String AuthorID;
	
	private List<Bookbean> list = new ArrayList<Bookbean>();  
	
	//public ArrayList list = new ArrayList();
	//private Action action;
	public String getTitle() {
		return Title;
	}
	public void setTitle(String Title) {
		this.Title = Title;
	}
	
	public String getNAuthorID() {
		return AuthorID;
	}
	public void setAuthorID(String AuthorID) {
		this.AuthorID = AuthorID;
	}
	

	public String execute() throws Exception{		
		Class.forName("com.mysql.jdbc.Driver");
	//	connection = DriverManager.getConnection("jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_hithu","mlxxm110jl","ijk4h4l0j4xzzjyw51w43j3kwlmi1zjx1kiiy5l2");	
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookdb","root","danshen94ss");	

		statement = connection.createStatement();
		
		String sql1 = String.format("delete from book where Title = '%s'",Title);
		statement.executeUpdate(sql1);
		
		String sql = String.format("select ISBN,Title,AuthorID,Publisher,PublishDate,Price from book where AuthorID = '%s'", AuthorID);
		resultSet = statement.executeQuery(sql);

		while(resultSet.next())
		  {
			Bookbean book = new Bookbean();
			book.setISBN(resultSet.getString(1));
			book.setTitle(resultSet.getString(2));
			book.setAuthorID(resultSet.getString(3));
			book.setPublisher(resultSet.getString(4));
			book.setPublishDate(resultSet.getString(5));
			book.setPrice(resultSet.getString(6));
		    list.add(book);
		  }
		 this.closeConnection();
		 HttpServletRequest request = ServletActionContext.getRequest();
		 request.setAttribute("list", list);
		return SUCCESS;
	}


public void closeConnection()
{
try{
	if(connection !=null){
		
		connection.close();
		connection = null;
	}
}catch(Exception e)
{
e.printStackTrace();	
}
}

}