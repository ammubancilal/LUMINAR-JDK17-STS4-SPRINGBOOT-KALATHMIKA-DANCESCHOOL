package com.luminar.springbootkalathmika.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "members") // Use your actual DB table name
public class Member {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "mem_id")
	private int memId;
	
	@Column(name = "mem_first_name")
	private String memFirstname;
	
	@Column(name = "mem_last_name")
	private String memLastname;
	
	@Column(name = "mem_address")
	private String memAddress;
	
	@Column(name = "mem_phone_number")
	private String memPhonenumber;
	
	@Column(name = "mem_email_id")
	private String memEmailid;
	
	@Column(name = "mem_gender")
	private String memGender;

	public int getMemId() {
		return memId;
	}

	public void setMemId(int memId) {
		this.memId = memId;
	}

	public String getMemFirstname() {
		return memFirstname;
	}

	public void setMemFirstname(String memFirstname) {
		this.memFirstname = memFirstname;
	}

	

	public String getMemAddress() {
		return memAddress;
	}

	public void setMemAddress(String memAddress) {
		this.memAddress = memAddress;
	}

	public String getMemPhonenumber() {
		return memPhonenumber;
	}

	public void setMemPhonenumber(String memPhonenumber) {
		this.memPhonenumber = memPhonenumber;
	}

	public String getMemEmailid() {
		return memEmailid;
	}

	public void setMemEmailid(String memEmailid) {
		this.memEmailid = memEmailid;
	}

	public String getMemGender() {
		return memGender;
	}

	public void setMemGender(String memGender) {
		this.memGender = memGender;
	}

	public String getMemLastname() {
		return memLastname;
	}

	public void setMemLastname(String memLastname) {
		this.memLastname = memLastname;
	}
	
	

}
