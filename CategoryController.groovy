package com.agungrianto.api.controller

import com.agungrianto.api.entity.Category
import com.agungrianto.api.service.CategoryService
import org.springframework.web.bind.annotation.*
import org.springframework.beans.factory.annotation.Autowired

@RestController
@RequestMapping('/categories')
class CategoryController{
    @Autowired
    private final CategoryService CategoryService
    
    @GetMapping('')
    List<Category> findAll(){
        CategoryService.findAll()
    }

    @GetMapping('{id}')
    Category findById(@PathVariable('id') int id){
    CategoryService.findById(id)
    }

    @DeleteMapping('{id}')
    Category delete(@PathVariable('id') int id) {
    CategoryService.delete(id) 
    }
  
    @PostMapping('')
    Category save (@RequestBody Category category){
    CategoryService.save(category)
    }

    @PutMapping('{id}')
    Category update(@RequestBody Category category, @PathVariable('id') int id){
    CategoryService.update(category, id)
  }
  
}