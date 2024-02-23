package com.javatpoint.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

@Entity
@Table
@NamedQuery(name = "AddStudent.findAllstudent", query = "SELECT p FROM add_student p")

public class AddStudent {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column
	public long studentID;
	@NotEmpty(message = "First name is required")
	@Column
	public String firstName;
	@Column
	@NotEmpty(message = "Last name is required")

	public String lastName;
	@Column
	@NotEmpty(message = "Father Name is required")

	public String fatherName;
	@Column
	@NotEmpty(message = "Mother name is required")

	public String motherName;
	@Column
	@NotEmpty(message = "Mobile Number is required")

	public String mobileNumber;
	@Column
	public String fatherMobileNumber;
	@Column
	public String address;

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public long getStudentID() {
		return studentID;
	}

	public void setStudentID(long studentID) {
		this.studentID = studentID;
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

	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public String getMotherName() {
		return motherName;
	}

	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getFatherMobileNumber() {
		return fatherMobileNumber;
	}

	public void setFatherMobileNumber(String fatherMobileNumber) {
		this.fatherMobileNumber = fatherMobileNumber;
	}

}
