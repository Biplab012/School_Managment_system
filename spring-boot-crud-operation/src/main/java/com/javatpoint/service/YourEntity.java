  package com.javatpoint.service;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class YourEntity {
	@Id
	private Long id;
    public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	private String name;

}
