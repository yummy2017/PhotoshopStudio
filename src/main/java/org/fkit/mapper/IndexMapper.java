package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.fkit.domain.Order;

public interface IndexMapper {
	@Insert("Insert into tb_index(loginname,ordername,sex,cont,phoername,clothes,album,time,other,state) values(#{loginname},#{ordername},#{sex} ,#{cont},#{phoername},#{clothes},#{album},#{time},#{other},'等待接单')")
	void insertOrderInformation(@Param("loginname")String loginname,@Param("ordername")String ordername,@Param("sex")String sex,
					@Param("cont") String cont,@Param("phoername") String phoername,
					@Param("clothes") String clothes,@Param("album") String album,
					@Param("time") String time,@Param("other") String other,@Param("state") String state);
	@Update("update tb_index set state=#{state} where id=#{id}")
	void alterState(@Param("state")String state,@Param("id")String id);
	
	@Select(" select * from tb_photographer")
	List<Order> findAllusername();
}
