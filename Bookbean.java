package web;

public class Bookbean{
	 
private String ISBN;
private String Title;
private String AuthorID;
private String Publisher;
private String PublishDate;
private String Price;

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

public String getAuthorID()
{
return AuthorID;
}
 public void setAuthorID(String AuthorID)
{
this.AuthorID = AuthorID;
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
}
