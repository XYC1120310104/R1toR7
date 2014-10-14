package web;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;


import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class shoe extends ActionSupport{

	/**
	 * 
	 */
	  /*system.out("helloworld")*/
	private static final long serialVersionUID = 1L;
	private static Connection connection = null;
	private static Statement statement ;
	private static ResultSet resultSet;
	private String Title;
	
	private List<Authorbean> list = new ArrayList<Authorbean>();  
	
	public String getTitle() {
		return Title;
	}
	public void setTitle(String Title) {
		this.Title = Title;
	}
	public String execute() throws Exception{
		String sql = String.format("select author.AuthorID,Name,Age,Country from Author,book where book.Title = '%s'",Title);
		Class.forName("com.mysql.jdbc.Driver");
	//	connection = DriverManager.getConnection("jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_hithu","mlxxm110jl","ijk4h4l0j4xzzjyw51w43j3kwlmi1zjx1kiiy5l2");	
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookdb","root","danshen94ss");	

		statement = connection.createStatement();
		resultSet = statement.executeQuery(sql);
		
		while(resultSet.next())
		  {
			Authorbean author = new Authorbean();
			author.setAuthorID(resultSet.getString(1));
			author.setName(resultSet.getString(2));
			author.setAge(resultSet.getString(3));
			author.setCountry(resultSet.getString(4));
		    list.add(author);
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
