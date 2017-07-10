package org.fkit.domain;

import java.io.Serializable;

/**
 * CREATE TABLE tb_user(
id INT PRIMARY KEY AUTO_INCREMENT,      #id
loginname VARCHAR(50) UNIQUE,		#登录名 邮箱
PASSWORD VARCHAR(18),			#密码
username VARCHAR(18),			#用户名
phone VARCHAR(18),			#电话
address VARCHAR(255)			#地址
);
 * */
public class User implements Serializable{

	private Integer id;			// id
	private String loginname;	// 登录名
	private String password;	// 密码
	private String username;	// 用户名
	private String email;		// 邮箱
	private String status;
	private String img;
	private String description;
	private String type;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getLoginname() {
		return loginname;
	}
	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", loginname=" + loginname + ", password="
				+ password + ", username=" + username + ", email=" + email
				+ ", status=" + status+ ",img=" + img + ",description=" + description + ",type=" + type + "]";
	}
	
}
