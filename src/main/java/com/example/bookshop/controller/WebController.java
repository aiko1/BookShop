package com.example.bookshop.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.bookshop.model.Book;
import com.example.bookshop.service.BookService;

@Controller
public class WebController {
	@Autowired
	private BookService bookService;

	// on start default page - 1st page
	private int currentPage = 1;

	@RequestMapping(value = "/login")
	public String login() {
		return "login";
	}

	@RequestMapping(value = "/booklist", method = RequestMethod.GET)
	public ModelAndView booklist(Authentication authentication, @RequestParam("page") Optional<Integer> page) {
		int pageCount = bookService.computePageCount();

		// if page selected set it to current page number
		page.ifPresent(p -> currentPage = p);

		// load books of selected (current) page
		List<Book> booklist = bookService.loadBooks(currentPage);

		Map<String, Object> params = new HashMap<>();

		// set page params
		params.put("booklist", booklist);
		params.put("username", authentication.getName());
		params.put("pagecount", pageCount);
		params.put("currentPage", currentPage);

		return new ModelAndView("booklist", params);
	}
	
	@RequestMapping(value="/booklist/bookdetails/{id}", method = RequestMethod.GET)
    public ModelAndView bookdetails (Authentication authentication, @PathVariable int id) {
		Book book = bookService.getBookDetails(id);
		
		Map<String, Object> params = new HashMap<>();
		params.put("book", book);
		params.put("username", authentication.getName());
		
		return new ModelAndView("bookdetails", params);
    }

	@RequestMapping(value = "/403")
	public String Error403() {
		return "403";
	}
}
