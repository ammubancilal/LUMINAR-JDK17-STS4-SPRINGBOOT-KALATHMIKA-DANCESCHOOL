package com.luminar.springbootkalathmika.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.luminar.springbootkalathmika.model.Event;



public interface EventRepository extends JpaRepository<Event, Integer> {

	List<Event> findByEventNameContainingIgnoreCase(String keyword);

}
