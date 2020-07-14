package com.wu.springboot_test;

import com.wu.springboot_test.dao.StudentDao;
import com.wu.springboot_test.pojo.Student;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
class SpringbootTestApplicationTests {

    @Test
    void contextLoads() {
    }

    @Autowired
    StudentDao studentDao;

    @Test
    public void test(){
        List<Student> list = studentDao.findAll();
        for (Student s : list){
            System.out.println(s.getName());
        }
    }
}
