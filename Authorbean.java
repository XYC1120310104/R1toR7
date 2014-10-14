package web;



public class Authorbean{
private String AuthorID;
private String Name;
private String Age;
private String Country;
public String getAuthorID()
{
	return AuthorID;
}
 public void setAuthorID(String AuthorID)
{
this.AuthorID = AuthorID;
}

public String getName()
{
	return this.Name;
}
public void setName(String Name)
{
	this.Name = Name;
}

public void setAge(String Age)
{
	this.Age = Age;
}
 public String getAge()
{
	 return this.Age;
}

 public String getCountry()
 {
 	return this.Country;
 }
public void setCountry(String Country)
{
	this.Country = Country;
}

}
