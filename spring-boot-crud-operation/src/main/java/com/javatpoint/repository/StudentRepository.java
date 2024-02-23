package com.javatpoint.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.javatpoint.model.AddStudent;
@Repository

public interface StudentRepository extends JpaRepository<AddStudent, Long>{
    List<AddStudent> findAllstudent();


}
