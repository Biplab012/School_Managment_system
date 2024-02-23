package com.javatpoint.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.javatpoint.model.AddTeacher;

public interface TeacherRepository extends JpaRepository<AddTeacher, Long> {

}
