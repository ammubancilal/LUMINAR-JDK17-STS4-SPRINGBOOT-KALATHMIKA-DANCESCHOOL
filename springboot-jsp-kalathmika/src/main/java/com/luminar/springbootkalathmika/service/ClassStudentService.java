package com.luminar.springbootkalathmika.service;

import java.util.List;

import com.luminar.springbootkalathmika.model.ClassStudent;

public interface ClassStudentService {

	List<ClassStudent> getAllClasses();

	List<ClassStudent> getAllStudents();

	List<ClassStudent> findByNameContainingIgnoreCase(String trim);

}
