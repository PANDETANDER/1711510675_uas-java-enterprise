package com.agungrianto.api.service.impl

import com.agungrianto.api.entity.Category
import com.agungrianto.api.repository.CategoryRepository
import com.agungrianto.api.service.CategoryService
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service
import javax.persistence.EntityNotFoundException

@Service
class CategoryServiceImpl implements CategoryService{

    @Autowired
    private final CategoryRepository CategoryRepository

    @Override
    List<Category> findAll(){
    CategoryRepository.findAll()
}
    @Override
    Category findById(int id) {
    CategoryRepository.findById(id)
    }

    @Override
    Category delete(int id) {
    def record =  CategoryRepository.findById(id)
    CategoryRepository.delete(record)   
    
    record
    }

    @Override
    Category save(Category category) {
    CategoryRepository.save(category)
    }


    @Override
    Category update(Category category, int id) {
    def record =  CategoryRepository.findById(id)
    record.with{
    name = category.name
    }
    
    CategoryRepository.save(record)
    record
    }

}