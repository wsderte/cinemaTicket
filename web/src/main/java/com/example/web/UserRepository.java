package com.example.web;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

//additional interface BD

@Repository
public interface UserRepository extends CrudRepository<User,Long> {
public User findByName(String name);
	public boolean existsByIdAndChair(Long Id, Integer chair);
	public boolean existsByRawAndChair(Integer raw, Integer chair);
}
