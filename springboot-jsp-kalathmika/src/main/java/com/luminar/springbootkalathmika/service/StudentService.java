package com.luminar.springbootkalathmika.service;

import java.util.List;
import java.util.Optional;

import com.luminar.springbootkalathmika.model.Member;
import com.luminar.springbootkalathmika.model.Student;
import com.luminar.springbootkalathmika.model.User;

public interface StudentService {
	void saveStudent(Member member, User user, Student student);
    // other methods like getAllStudents(), deleteStudent(), etc.
	public List<Student> getAllStudents() ;
	List<Student> findByNameContainingIgnoreCase(String keyword);
	Student getStudentById(int id);
	void updateStudent(Student student);
	void deleteStudentById(int id);
	Optional<Student> getStudentByMemId(int memId);
	Student getStudentByUserName(String studentName);
	

}
