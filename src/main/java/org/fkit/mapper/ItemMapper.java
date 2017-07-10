package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.fkit.domain.Item;

public interface ItemMapper {
	//@Select("select distinct albums,clothes,username from  tb_album,tb_cloth,tb_photographer where tb_photographer.type='摄影师' and EXISTS (select type,id,albums from tb_album union select type,id,clothes from tb_cloth union select type,id,username from tb_photographer)")
	//@Select("select * from dbo.item")
	@Select("select distinct username from dbo.item")
	List<Item> findAllusername();
	
	@Select("select distinct clothes from dbo.item")
	List<Item> findAllclothes();
	
	@Select("select distinct albums from dbo.item")
	List<Item> findAllalbums();
}
