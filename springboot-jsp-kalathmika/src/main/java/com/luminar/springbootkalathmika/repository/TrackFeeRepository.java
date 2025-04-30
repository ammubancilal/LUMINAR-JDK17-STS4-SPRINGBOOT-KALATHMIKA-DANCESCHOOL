package com.luminar.springbootkalathmika.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.RequestParam;

import com.luminar.springbootkalathmika.model.TrackFee;

public interface TrackFeeRepository extends JpaRepository<TrackFee, Integer> {

    List<TrackFee> findAll();

    boolean existsByStudent_StuIdAndFeeMonthAndFeeYear(int stuId, String feeMonth, String feeYear);

    @Query("SELECT tf FROM TrackFee tf " +
            "WHERE (:studentName IS NULL OR tf.student.stuName LIKE :studentName) " +
            "AND (:month IS NULL OR tf.feeMonth = :month) " +
            "AND (:year IS NULL OR tf.feeYear = :year)")
     List<TrackFee> searchByFilters(@Param("studentName") String studentName,
                                    @Param("month") String month,
                                    @Param("year") String year);

    List<TrackFee> findByStudent_StuId(Integer stuId);
    
    @Query("SELECT f FROM TrackFee f WHERE LOWER(f.feeMonth) LIKE LOWER(CONCAT('%', :month, '%')) AND f.feeYear = :year AND f.student.stuId = :studentId")
    List<TrackFee> findByFeeMonthAndFeeYearAndStudent_StuId(@Param("month") String month, 
                                                            @Param("year") String year, 
                                                            @Param("studentId") int studentId);

	List<TrackFee> findByFeeMonthContainingIgnoreCaseAndStudent_StuId(String month, int studentId);

	List<TrackFee> findByFeeYearAndStudent_StuId(String year, int studentId);



}
