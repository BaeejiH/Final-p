package com.gd.Final.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {
	private final JdbcTemplate jdbcTemplate;

    @Autowired
    public TestController(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @GetMapping("/test/db")
    public String testDatabaseConnection() {
        try {
            jdbcTemplate.queryForObject("SELECT 1", Integer.class);
            return "Database connection successful!";
        } catch (Exception e) {
            e.printStackTrace();
            return "Failed to connect to the database. Error: " + e.getMessage();
        }
    }
    
    // Failed to connect to the database. Error: Failed to obtain JDBC Connection
    // 원래쓰던 로컬이 아닌 13.209.213.177:3306 ip port로 db 접속시 성공.
}
