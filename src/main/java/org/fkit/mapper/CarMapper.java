package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.fkit.domain.Book;

public interface CarMapper {
	@Insert(" insert into tb_count(NAME) values(${book.name }) ")
	void insertInformation(@Param("NAME")String NAME);
	
	
	@Update(" update tb_count set sum=(select count(name) from tb_count) ")
	void updateInformation(@Param("count")Integer count);
	
	@Select(" select NAME,count from tb_count ")
	List<Book> findAll();

	@Delete(" delete from tb_count where name={book.name } ")
	void deleteInformation(@Param("NAME")String NAME);

	
}
