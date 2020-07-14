package com.wu.springboot_test.dao;

import com.wu.springboot_test.pojo.Student;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StudentDao extends JpaRepository<Student, Integer> {
}
