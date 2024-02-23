package com.javatpoint.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.javatpoint.model.AddStudent;
import com.javatpoint.model.AddTeacher;
import com.javatpoint.model.User;
import com.javatpoint.repository.StudentRepository;
import com.javatpoint.repository.TeacherRepository;
import com.javatpoint.repository.UserRepository;

@Service
public class UserService {
	@Autowired
	UserRepository userRepository;
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	@Autowired
	StudentRepository studentRepository;
	@Autowired
	TeacherRepository teacherRepository;
    public List<AddStudent> getallstudent()
    {
		return studentRepository.findAllstudent();
    	
    }
	public List<AddTeacher> getAllTeacher() {
		return teacherRepository.findAll();

	}

	public Integer saveUser(User user) {
		String passwd = user.getPassword();
		String encodedPasswod = passwordEncoder.encode(passwd);
		user.setPassword(encodedPasswod);
		user = userRepository.save(user);
		return user.getId();
	}

	public void AddstudentDetails(AddStudent addStudent) {
		AddStudent student = studentRepository.save(addStudent);
		System.out.println(student);
	}

	public List<AddStudent> getAllStudents() {
		return studentRepository.findAll();

	}

	public void AddTeacherDetails(AddTeacher addtTeacher) {
		teacherRepository.save(addtTeacher);
	}
}
