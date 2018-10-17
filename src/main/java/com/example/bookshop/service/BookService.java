package com.example.bookshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.bookshop.dao.BookDAO;
import com.example.bookshop.model.Book;

@Service
public class BookService {
	// количество записей на одной странице таблицы (6 - оптимальный размер для отображения на странице без прокрутки)
	public static final int DEFAULT_PAGE_SIZE = 6;

	@Autowired
	private BookDAO bookDAO;

	// вычислить количество страниц
	public int computePageCount() {

		// вычислить количество записей в БД
		int totalCount = bookDAO.booksCount();

		// для 23 будет 3
		int pageCount = totalCount / DEFAULT_PAGE_SIZE;

		// инкрементируем, чтобы отобразить остаток от деления (для 23 оставшиеся 5) на следующей странице
		if (totalCount % DEFAULT_PAGE_SIZE != 0) {
			pageCount++;
		}
		return pageCount;
	}

	// загружаем записи одной - запрашиваемой страницы
	public List<Book> loadBooks(int page) {

		// if first page load first 6 records, without offset
		if (page == 1) {
			return bookDAO.loadBooks(DEFAULT_PAGE_SIZE, 0);
		} else //for 2nd page offset 6 records: load records 7-12, ...
			return bookDAO.loadBooks(DEFAULT_PAGE_SIZE, (page - 1) * DEFAULT_PAGE_SIZE);
	}
	
	public Book getBookDetails(int id) {
		return bookDAO.findByID(id);
	}

}
