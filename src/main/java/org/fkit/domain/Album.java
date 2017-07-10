package org.fkit.domain;

import java.io.Serializable;

public class Album implements Serializable{
	private Integer id;			// id
	private String albums;	// 登录名
	private String description;	// 密码
	private Integer price;	// 用户名
	private String img;		// 邮箱
	private String img1;
	private String img2;
	private String img3;
	private String img4;
	private String img5;
	public Album() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getAlbums() {
		return albums;
	}
	public void setAlbums(String albums) {
		this.albums = albums;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getImg1() {
		return img1;
	}
	public void setImg1(String img1) {
		this.img1 = img1;
	}
	public String getImg2() {
		return img2;
	}
	public void setImg2(String img2) {
		this.img2 = img2;
	}
	public String getImg3() {
		return img3;
	}
	public void setImg3(String img3) {
		this.img3 = img3;
	}
	public String getImg4() {
		return img4;
	}
	public void setImg4(String img4) {
		this.img4 = img4;
	}
	public String getImg5() {
		return img5;
	}
	public void setImg5(String img5) {
		this.img5 = img5;
	}
	@Override
	public String toString() {
		return "Album [id=" + id + ", albums=" + albums + ", description="
				+ description + ", price=" + price + ", img=" + img
				+ ", img1=" + img1+ ",img2=" + img2 + ",img3=" + img3 +",img4=" + img4 +",img5=" + img5 + "]";
	}
}
