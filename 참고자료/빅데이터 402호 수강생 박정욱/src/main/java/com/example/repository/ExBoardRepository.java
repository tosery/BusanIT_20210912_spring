package com.example.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.example.entity.ExBoard;

public interface ExBoardRepository extends JpaRepository<ExBoard, String> {

	// SELECT * FROM EX_BOARD WHERE BRDTITLE LIKE '%' || '사과' || '%' ORDER BY BRDNO
	// DESC
	List<ExBoard> findAllByTitleIgnoreCaseContainingOrderByCityDesc(String txt, Pageable pageable);

	// SELECT COUNT(*) FROM ITEM1TBL WHERE ITMNAME LIKE '%' || '사과' || '%'
	long countByTitleIgnoreCaseContaining(String txt);

	Optional<ExBoard> findByCity(String city);

}