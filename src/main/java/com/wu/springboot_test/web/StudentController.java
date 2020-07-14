package com.wu.springboot_test.web;

import com.wu.springboot_test.dao.StudentDao;
import com.wu.springboot_test.pojo.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class StudentController {

    @Autowired
    StudentDao studentDao;

    @RequestMapping("/listStu")
    public String getInfo (Model model,
                          @RequestParam(value = "start", defaultValue = "0") int start,
                          @RequestParam(value = "size", defaultValue = "5") int size){
        start = start<0 ? 0 : start;
        Sort sort = Sort.by(Sort.Direction.ASC, "id");
        Pageable pageable = PageRequest.of(start, size, sort);
        Page<Student> page = studentDao.findAll(pageable);
        model.addAttribute("page", page);
        return "studentInfo";
    }

    @RequestMapping("/addStu")
    public String addStu(Student student){
        studentDao.save(student);
        return "redirect:listStu";
    }

    @RequestMapping("/deleteStu")
    public String deleteStu(Student id){
        studentDao.delete(id);
        return "redirect:listStu";
    }

    @RequestMapping("/editStu")
    public String editStu(int id, Model model){
        Student student = studentDao.getOne(id);
        model.addAttribute("stu", student);
        return "editStu";
    }

    @RequestMapping("/updateStu")
    public String updateStu(Student student){
        studentDao.save(student);
        return "redirect:listStu";
    }

}
