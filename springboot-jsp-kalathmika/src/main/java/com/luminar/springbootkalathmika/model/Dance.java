package com.luminar.springbootkalathmika.model;

import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "danceforms") // Use your actual DB table name
public class Dance {
	
	
	@Id
	private int dance_id;
	 @Column(name = "dance_name") // make sure the column name matches if you're using a specific database column name
	    private String danceName; // make sure the field is named 'danceName' or whatever your getter uses
	private String dance_desc;
	private String dance_origin_state;
	private LocalDateTime dance_created_at;
	private LocalDateTime dance_updated_at;
	public int getDance_id() {
		return dance_id;
	}
	public void setDance_id(int dance_id) {
		this.dance_id = dance_id;
	}
	public String getDance_name() {
		return danceName;
	}
	public void setDance_name(String dance_name) {
		this.danceName = dance_name;
	}
	public String getDance_desc() {
		return dance_desc;
	}
	public void setDance_desc(String dance_desc) {
		this.dance_desc = dance_desc;
	}
	public String getDance_origin_state() {
		return dance_origin_state;
	}
	public void setDance_origin_state(String dance_origin_state) {
		this.dance_origin_state = dance_origin_state;
	}
	public LocalDateTime getDance_created_at() {
		return dance_created_at;
	}
	public void setDance_created_at(LocalDateTime now) {
		this.dance_created_at = now;
	}
	public LocalDateTime getDance_updated_at() {
		return dance_updated_at;
	}
	public void setDance_updated_at(LocalDateTime dance_updated_at) {
		this.dance_updated_at = dance_updated_at;
	}

}
