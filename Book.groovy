package com.agungrianto.api.entity
import javax.persistence.Entity
import javax.persistence.Id
import javax.persistence.GeneratedValue
import javax.persistence.Table
import javax.persistence.GenerationType
import javax.validation.constraints.NotNull
import javax.persistence.Column
import javax.persistence.*

@Entity
@Table(name = "books")
class Book
{

@Id    
@GeneratedValue(strategy = GenerationType.IDENTITY)    
@Column(name="id")
Integer id 

@NotNull    
@Column(name="name")
String name 

@NotNull    
@Column(name="isbn")
String isbn

@NotNull    
@Column(name="tahunterbit") 
String tahunterbit

@NotNull    
@Column(name="penulis") 
String penulis

@NotNull    
@Column(name="bahasa") 
String bahasa

@NotNull    
@Column(name="jeniscover") 
String jeniscover


  @ManyToOne( // tell persistence provider 'categories' is a many-to-one relation with Book
      fetch = FetchType.EAGER, // do not fetch value when Book is loaded
      optional = false // will make the foreign key mandatory
  )
   
    Category category

 }