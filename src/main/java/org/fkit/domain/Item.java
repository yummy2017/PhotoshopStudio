package org.fkit.domain;

import java.io.Serializable;

public class Item implements Serializable{
	private String albums;	// 登录名
	private String clothes;	// 密码
	private  String username;	// 用户名
	public Item() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getAlbums() {
		return albums;
	}
	public void setAlbums(String albums) {
		this.albums = albums;
	}
	public String getClothes() {
		return clothes;
	}
	public void setClothes(String clothes) {
		this.clothes = clothes;
	}
	

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	@Override
	public String toString() {
		return "Item [albums=" + albums + ", clothes=" + clothes + ", username="
				+ username +  "]";
	}
}
