package com.luminar.springbootkalathmika.service;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.luminar.springbootkalathmika.model.Event;
import com.luminar.springbootkalathmika.repository.EventRepository;


@Service // ✅ Add this annotation here
public class EventServiceImpl implements EventService{
	
	 @Autowired
	    private EventRepository eventRepository;
	
	 @Override
	    public List<Event> getAllEvents() {
	        return eventRepository.findAll();
	    }

	@Override
	public void saveEvent(Event event) {
		  // Save the event object to the database using the repository
		 if (event.getEventCreatedat() == null) {
		        event.setEventCreatedat(LocalDateTime.now());
		    }
		 
		 if (event.getEventUpdatedat() == null) {
		        event.setEventUpdatedat(LocalDateTime.now());
		    }
		 
		 
        eventRepository.save(event); // This will persist the event object
		
	}

	

	@Override
	public Event getEventById(int eventId) {
		  return eventRepository.findById(eventId).orElse(null);
	}

	@Override
	public void updateEvent(Event event) {
		Event existingEvent = eventRepository.findById(event.getEventId())
		        .orElseThrow(() -> new RuntimeException("Event not found with id: " + event.getEventId()));
		    
		    // Only update mutable fields
		    existingEvent.setEventName(event.getEventName());
		    existingEvent.setEventDate(event.getEventDate());
		    existingEvent.setEventLocation(event.getEventLocation());
		    existingEvent.setEventDesc(event.getEventDesc());
		    existingEvent.setEventUpdatedat(LocalDateTime.now());
		    
		    eventRepository.save(existingEvent);
	}

	@Override
	public void deleteEvent(int eventId) {
		 eventRepository.deleteById(eventId);
		
	}

	@Override
	public List<Event> searchEventsByName(String keyword) {
		 return eventRepository.findByEventNameContainingIgnoreCase(keyword); // Search events by event name (case-insensitive)
	}

}
