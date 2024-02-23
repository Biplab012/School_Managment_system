package com.javatpoint.repository;

import org.springframework.data.repository.CrudRepository;

import com.javatpoint.model.Contact;

public interface ContactRepository extends CrudRepository<Contact ,Long> {

}
