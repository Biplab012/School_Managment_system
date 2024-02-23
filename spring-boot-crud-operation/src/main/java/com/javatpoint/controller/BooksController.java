package com.javatpoint.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import com.javatpoint.component.MyComponent;
import com.javatpoint.model.AddStudent;
import com.javatpoint.model.AddTeacher;
import com.javatpoint.model.Books;
import com.javatpoint.model.Contact;
import com.javatpoint.model.User;
import com.javatpoint.service.BooksService;
import com.javatpoint.service.UserService;

@Controller
public class BooksController {
	@Autowired
	BooksService booksService;
	@Autowired
	UserService userService;
	@Value("${JSTLTAGURL}")
	private static String JSTLTAGURL;
	@Autowired
	MyComponent myComponent;
	static {
		System.out.println(JSTLTAGURL);

	}

	@GetMapping("/viewTeacher")
	public String viewTeacher(Model model) {
		List<AddTeacher> teacherdetails = userService.getAllTeacher();
		model.addAttribute("teacher", teacherdetails);
		return "viewTeacher";
	}

	@GetMapping("/addTeacher")
	public String addTeacher(Model model) {
		model.addAttribute("teacher", new AddTeacher());
		return "addTeacher";

	}

	@PostMapping("/submitTeacher")
	public String submitTeacher(@ModelAttribute("teacher") @Validated AddTeacher addTeacher, BindingResult result) {
		if (result.hasErrors()) {
			return "addTeacher";

		} else {
			userService.AddTeacherDetails(addTeacher);

		}
		return "redirect:/addTeacher";

	}

	@GetMapping("/addStudent")
	public String addStudent(Model model) {
		model.addAttribute("student", new AddStudent());
		System.out.println("url====" + myComponent.getUrl());
		return "addStudent";

	}

	@GetMapping("/viewStudent")
	public String viewStudent(Model model) {
		List<AddStudent> studentdetails = userService.getAllStudents();
		model.addAttribute("student", studentdetails);
		return "viewStudent";

	}

	@PostMapping("/submitStudent")
	public String submitStudent(@ModelAttribute("student") @Validated AddStudent addStudent, BindingResult result) {
		if (result.hasErrors()) {
			return "addStudent";

		} else {
			userService.AddstudentDetails(addStudent);

		}
		return "redirect:/addStudent";

	}

	@GetMapping("logout")
	public String logout() {
		System.out.println("sdfsdf");
		return "redirect:/adminLogin";
	}

	@GetMapping("/dashboard")
	public String dashboard(Model model) {

		return "admin";
	}

	@GetMapping(value = "/saveUser")
	public String saveUser(@RequestParam String name, @RequestParam String email, @RequestParam String password) {
		User user = new User();
		user.setName(name);
		user.setEmail(email);
		user.setPassword(password);
		userService.saveUser(user);
		return "redirect:/adminLogin";
	}

	@GetMapping("/contact")
	public String contact(Model model) {
		model.addAttribute("data", "Data Register Succfully!.");

		return "contact";

	}

	@GetMapping(value = "/submitContcat")
	public String submitContcat(Model model, @RequestParam String firstName, @RequestParam String lastName,
			@RequestParam String mobileNumber, @RequestParam String email, @RequestParam String message) {
		Contact contact = new Contact();
		contact.setFirstName(firstName);
		contact.setLastName(lastName);
		contact.setMobileNumber(mobileNumber);
		contact.setEmail(email);
		contact.setMessage(message);
		booksService.saveConact(contact);
		System.out.println("asfgsd");
		return "redirect:/contact";
	}

//creating a get mapping that retrieves all the books detail from the database 
	@GetMapping("/book")
	private List<Books> getAllBooks() {
		return booksService.getAllBooks();
	}

//creating a get mapping that retrieves the detail of a specific book
	@GetMapping("/book/{bookid}")
	private Books getBooks(@PathVariable("bookid") int bookid) {
		return booksService.getBooksById(bookid);
	}

//creating a delete mapping that deletes a specified book
	@DeleteMapping("/book/{bookid}")
	private void deleteBook(@PathVariable("bookid") int bookid) {
		booksService.delete(bookid);
	}

//creating post mapping that post the book detail in the database
	@PostMapping("/books")
	private int saveBook(@RequestBody Books books) {
		booksService.saveOrUpdate(books);
		return books.getBookid();
	}

//creating put mapping that updates the book detail 
	@PutMapping("/books")
	private Books update(@RequestBody Books books) {
		booksService.saveOrUpdate(books);
		return books;
	}
}
