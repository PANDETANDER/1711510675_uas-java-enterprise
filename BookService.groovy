package com.agungrianto.api.service
import com.agungrianto.api.entity.Book

interface BookService { 
    List<Book>findAll()   
    Book findById(int id)
    Book save(Book book)
    Book update(Book book, int id)
    Book delete(int id)
   
     }