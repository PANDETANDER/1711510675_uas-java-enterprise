package com.agungrianto.api.repository
import com.agungrianto.api.entity.Book
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository

@Repository 
interface BookRepository extends JpaRepository<Book, Integer> { 

List<Book>findAll()
Book findById(Integer id)
Book save (Book book)
void delete (Book book)

} 