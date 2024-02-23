package com.javatpoint.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotEmpty;

@Entity
public class AddTeacher {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	private long teacherId;
	@NotEmpty(message = "First name is required")

	private String firstName;
	@NotEmpty(message = "L name is required")

	private String lastName;
	@NotEmpty(message = "Email is required")

	private String email;
	@NotEmpty(message = "Mobile Number is required")
	private String phone;
	@NotEmpty(message = "Address is required")

	private String address;

	public long getTeacherId() {
		return teacherId;
	}

	public void setTeacherId(long teacherId) {
		this.teacherId = teacherId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}
