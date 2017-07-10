package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.fkit.domain.Order;


public interface OrderMapper {
	@Select(" select * from tb_index where loginname=#{loginname}")
	List<Order> findAll(@Param("loginname")String loginname);
	
	@Select(" select * from tb_index where phoername=(select username from tb_photographer where loginname=#{loginname})")
	List<Order> phofindAll(@Param("loginname")String loginname);

}
