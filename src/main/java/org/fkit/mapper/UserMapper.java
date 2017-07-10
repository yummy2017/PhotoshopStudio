package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.fkit.domain.User;

/**
 * UserMapper鎺ュ彛
 * */
public interface UserMapper {
	
	@Select("select * from tb_photographer")
	List<User> findAll();
	
	@Select("select * from tb_user where loginname = #{loginname} and password = #{password}")
	User findWithLoginnameAndPassword(@Param("loginname")String loginname,
			@Param("password") String password);
	
	@Select("select * from tb_photographer where loginname = #{loginname} and password = #{password}")
	User phofindWithLoginnameAndPassword(@Param("loginname")String loginname,
			@Param("password") String password);

	@Select("select * from tb_user where username=#{username} and loginname=#{loginname} and email=#{email}")
	User findWithUsernameAndLoginnameAndEmail(@Param("username")String username,@Param("loginname")String loginname,
			@Param("email") String email);
	
	@Update("update tb_user set PASSWORD=#{password} where username=#{username} and loginname=#{loginname} and email=#{email}")
	void repassword(@Param("username")String username,@Param("loginname")String loginname,
			@Param("password") String password,@Param("email") String email);
	
	@Insert("Insert into tb_user(username,loginname,password,email) values( #{username} ,#{loginname},#{password},#{email})")
	void insertInformation(@Param("username")String username,@Param("loginname")String loginname,
					@Param("password") String password,@Param("email") String email);
	
	@Insert("Insert into tb_photographer(username,loginname,password,email,status,type) values( #{username} ,#{loginname},#{password},#{email},'待审核','摄影师')")
	void insertphoInformation(@Param("username")String username,@Param("loginname")String loginname,
					@Param("password") String password,@Param("email") String email);
}

