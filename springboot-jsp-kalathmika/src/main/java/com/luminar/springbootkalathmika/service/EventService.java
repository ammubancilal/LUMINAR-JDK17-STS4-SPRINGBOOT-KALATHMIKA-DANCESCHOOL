package com.luminar.springbootkalathmika.service;

import java.util.List;

import com.luminar.springbootkalathmika.model.Event;

public interface EventService {

	List<Event> getAllEvents();

	void saveEvent(Event event);

	Event getEventById(int eventId);

	void updateEvent(Event event);

	void deleteEvent(int eventId);

	List<Event> searchEventsByName(String keyword);

}
