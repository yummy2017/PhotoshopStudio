package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.fkit.domain.Album;

public interface AlbumMapper {
	@Select("select * from tb_album")
	List<Album> findAll();
}
