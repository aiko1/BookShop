package com.example.bookshop.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.example.bookshop.model.Book;

@Mapper
public interface BookDAO {	
	@Select("SELECT * FROM BOOKS limit #{limit} offset #{offset}")
	public List<Book> loadBooks(@Param("limit") int limit, @Param("offset") int offset);
	
	@Select("SELECT COUNT(*) FROM BOOKS")
	public int booksCount();
	
	@Select("SELECT * FROM BOOKS where id = #{id}")
	public Book findByID(@Param("id") int id);
}
