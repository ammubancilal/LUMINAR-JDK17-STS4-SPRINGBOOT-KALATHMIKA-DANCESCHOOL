package com.luminar.springbootkalathmika.model;

import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "events") // Use your actual DB table name
public class Event {
	
	@Id
	@Column(name = "event_id")
	private int eventId;
	
	@Column(name = "event_name")
	private String eventName;
	
	@Column(name = "event_date")
	private String eventDate;
	
	@Column(name = "event_location")
	private String eventLocation;
	
	@Column(name = "event_desc")
	private String eventDesc;
	
	@Column(name = "event_created_at")
	private LocalDateTime eventCreatedat;
	
	@Column(name = "event_updated_at")
	private LocalDateTime eventUpdatedat;

	public int getEventId() {
		return eventId;
	}

	public void setEventId(int eventId) {
		this.eventId = eventId;
	}

	public String getEventName() {
		return eventName;
	}

	public void setEventName(String eventName) {
		this.eventName = eventName;
	}

	public String getEventDate() {
		return eventDate;
	}

	public void setEventDate(String eventDate) {
		this.eventDate = eventDate;
	}

	public String getEventLocation() {
		return eventLocation;
	}

	public void setEventLocation(String eventLocation) {
		this.eventLocation = eventLocation;
	}

	public String getEventDesc() {
		return eventDesc;
	}

	public void setEventDesc(String eventDesc) {
		this.eventDesc = eventDesc;
	}

	public LocalDateTime getEventCreatedat() {
		return eventCreatedat;
	}

	public void setEventCreatedat(LocalDateTime eventCreatedat) {
		this.eventCreatedat = eventCreatedat;
	}

	public LocalDateTime getEventUpdatedat() {
		return eventUpdatedat;
	}

	public void setEventUpdatedat(LocalDateTime eventUpdatedat) {
		this.eventUpdatedat = eventUpdatedat;
	}
	
	
	
	
	

}
