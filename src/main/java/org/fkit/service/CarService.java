package org.fkit.service;

import java.util.List;

import org.fkit.domain.Book;

public interface CarService {
	void insert(String NAME);
	void update(Integer count);
	void delete(String NAME);
	List<Book> getAll();
}
