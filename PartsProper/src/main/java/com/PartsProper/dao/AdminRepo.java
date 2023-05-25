package com.PartsProper.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.PartsProper.models.Admin;

public interface AdminRepo extends JpaRepository<Admin, String>{
	@Query("select count(*) from Admin where username=?1 and password=?2")
	public int AdminExists(String username, String password);
}
