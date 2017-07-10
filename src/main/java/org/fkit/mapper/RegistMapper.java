package org.fkit.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;

public interface RegistMapper {
	@Insert("Insert into tb_user(username,loginname,password,email) values( #{username} ,#{loginname},#{password},#{email})")
	void insertInformation(@Param("username")String username,@Param("loginname")String loginname,
					@Param("password") String password,@Param("email") String email);
	
	@Insert("Insert into tb_photographer(username,loginname,password,email,status) values( #{username} ,#{loginname},#{password},#{email},'待审核')")
	void insertphoInformation(@Param("username")String username,@Param("loginname")String loginname,
					@Param("password") String password,@Param("email") String email);
}
