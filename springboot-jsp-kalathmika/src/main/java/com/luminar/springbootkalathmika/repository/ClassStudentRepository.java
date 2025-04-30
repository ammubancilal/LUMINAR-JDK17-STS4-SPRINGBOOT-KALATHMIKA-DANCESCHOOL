package com.luminar.springbootkalathmika.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.luminar.springbootkalathmika.model.ClassStudent;

public interface ClassStudentRepository extends JpaRepository<ClassStudent, Integer>  {

	List<ClassStudent> findByClassNameContainingIgnoreCase(String trim);

}
