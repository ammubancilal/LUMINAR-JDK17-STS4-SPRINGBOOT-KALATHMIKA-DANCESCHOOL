package com.luminar.springbootkalathmika.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.luminar.springbootkalathmika.model.Member;

public interface MemberRepository extends JpaRepository<Member, Integer> {

}
