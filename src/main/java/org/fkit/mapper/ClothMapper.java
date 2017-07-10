package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.fkit.domain.Cloth;

public interface ClothMapper {
	@Select("select * from tb_cloth")
	List<Cloth> findAll();
	
	@Select("select * from tb_cloth where clothes=#{clothes}")
	List<Cloth> findAlldetail(@Param("clothes")String clothes);
}
