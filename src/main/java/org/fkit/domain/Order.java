package org.fkit.domain;

import java.io.Serializable;

public class Order implements Serializable{
	private String id;
	private String loginname;
	private String ordername;				// 姓名	
	private String sex;			// 性别
	private String cont;			// 联系方式
	private String phoername;		// 摄影师
	private String clothes;	// 服装
	private String album;			// 相册
	private String time;			// 预约时间
	private String other;			// 其他备注
	private String state;
	public Order() {
		super();
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getLoginname() {
		return loginname;
	}

	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}

	public String getOrdername() {
		return ordername;
	}
	public void setOrdername(String ordername) {
		this.ordername = ordername;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getCont() {
		return cont;
	}
	public void setCont(String cont) {
		this.cont = cont;
	}
	public String getPhoername() {
		return phoername;
	}
	public void setPhoername(String phoername) {
		this.phoername = phoername;
	}
	public String getClothes() {
		return clothes;
	}
	public void setClothes(String clothes) {
		this.clothes = clothes;
	}
	public String getAlbum() {
		return album;
	}
	public void setAlbum(String album) {
		this.album = album;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getOther() {
		return other;
	}
	public void setOther(String other) {
		this.other = other;
	}
	
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "Order [id=" + id + ", loginname=" + loginname + ", ordername=" + ordername + ", sex=" + sex + ", cont=" + cont
				+ ", phoername=" + phoername + ", clother="
				+ clothes + ", album=" + album + ", time=" + time
				+ ", other=" + other + ", state=" + state + "]";
	}

	
}
