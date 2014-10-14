package web;

import com.opensymphony.xwork2.ActionSupport;

public class Insert extends ActionSupport{
	private String ISBN;
	private String Title;
	private String AuthorID;
	private String Publisher;
	private String PublishDate;
	private String Price;
     /*system.out("helloworld")*/
	public String getISBN()
	{
	return this.ISBN;
	}
	public void setISBN(String ISBN)
	{
	this.ISBN = ISBN;
	}
	 
	public String getTitle()
	{
		return this.Title;
	}
	public void setTitle(String Title)
	{
		this.Title = Title;
	}

	public String getID()
	{
	return ID;
	}
	 public void setID(String AuthorID)
	{
	this.ID = ID;
	}

	 public String getPublisher()
	{
		 return this.Publisher;
	}
	public void setPublisher(String Publisher)
	{
		this.Publisher = Publisher;
	}

	 public String getPublishDate()
	{
		 return this.PublishDate;
	}
	public void setPublishDate(String PublishDate)
	{
		this.PublishDate = PublishDate;
	}

	public String getPrice()
	{
		return this.Price;
	}
	public void setPrice(String Price)
	{
		this.Price = Price;
	}

	
	public String execute() throws Exception{
		
		return "SUCCESS";
	}

}
