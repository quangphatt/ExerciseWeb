package com.Model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the "Users" database table.
 * 
 */
@Entity
@Table(name="\"Users\"")
@NamedQuery(name="Users.findAll", query="SELECT u FROM Users u")
public class Users implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String emaill;

	private String fname;

	private String lname;

	public Users(String emaill, String fname, String lname) {
		this.emaill = emaill;
		this.fname = fname;
		this.lname = lname;
	}

	public Users() {
	}

	public String getEmaill() {
		return this.emaill;
	}

	public void setEmaill(String emaill) {
		this.emaill = emaill;
	}

	public String getFname() {
		return this.fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return this.lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

}