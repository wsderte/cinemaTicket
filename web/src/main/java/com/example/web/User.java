package com.example.web;

import javax.persistence.Column;
import javax.persistence.Entity;
//import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "UsersBD")
public class User {
	  @Id
	  @GeneratedValue(strategy=GenerationType.AUTO)
	  private Long id;
	  
	  private String name;
	  private String cinema;
	  private Integer raw;
	  private Integer chair;
	  
	  public User() {
		  
	  }
	  
	  public User(String name) {
		  this.name = name;
	  }
	  
	  public User(String name,String cinema,Integer chair) {
		  this.name = name;
		  this.cinema = cinema;
		  this.chair = chair;
	  }
	  // name, cinema, chair, raw
	  public User(String name,String cinema,Integer chair,Integer raw) {
		  this.name = name;
		  this.cinema = cinema;
		  this.chair = chair;
		  this.raw = raw;
	  }
	  
	  //id
	  @Column
	  public Long getId() {
		    return id;
	  }
	  public void setId(Long id) {
		    this.id = id;
	 }
	  
	  //chair
	  @Column
	  public Integer getChair() {
		    return chair;
	  }
	  public void setChair(Integer chair) {
		   this.chair = chair;
	  }
	  //raw
	  @Column
	  public Integer getRaw() {
		    return raw;
	  }
	  public void setRaw(Integer raw) {
		   this.raw = raw;
	  }
	  //name
	  @Column
	  public String getName() {
		    return name;
		  }
      public void setName(String name) {
		    this.name = name;
	  }
      
	  // cinema
      @Column
      public String getCinema() {
    	    return cinema;
      }
      public void setCinema(String cinema) {
    	    this.cinema = cinema;
      }
	  
}
