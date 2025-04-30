package com.luminar.springbootkalathmika.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.luminar.springbootkalathmika.model.ClassStudent;
import com.luminar.springbootkalathmika.repository.ClassStudentRepository;

@Service  
public class ClassStudentServiceImpl implements ClassStudentService{

	@Autowired
    private ClassStudentRepository classStudentRepository;

    @Override
    public List<ClassStudent> getAllClasses() {
        return classStudentRepository.findAll();
    }

	@Override
	public List<ClassStudent> getAllStudents() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ClassStudent> findByNameContainingIgnoreCase(String name) {
		 return classStudentRepository.findByClassNameContainingIgnoreCase(name.trim());
	}

}
