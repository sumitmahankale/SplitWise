package com.Service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Model.Admin;
import com.Model.UserCreation;
import com.Repository.AdminRepository;
import com.Repository.SplitwiseRepository;

@Service
class SplitwiseServiceIMPL implements SplitwiseService
{

	@Autowired
	private SplitwiseRepository repository;
	
	@Autowired
	private AdminRepository repo;
	
	@Override
	public void SaveUser(UserCreation usercreation) {
		repository.save(usercreation);
		
	}
	 public boolean authenticateUser(String username, String password) {
	        Optional<UserCreation> user = repository.findById(username);
	        if (user.isPresent() && user.get().getNewPassWord().equals(password)) {
	            return true; 
	        }
	        return false; 
	    }
	@Override
	public List<Admin> loginCheck(String username, String password) {
		if(username.equals("sumit")&& password.equals("1234"))
		{
		return repo.findAll();
	}
	else
	{
		return null;
	}
	}
	@Override
	public List<UserCreation> loginCheckAdmin(String username, String password) {
		if(username.equals("admin")&& password.equals("1234"))
		{
		return repository.findAll();
	}
	else
	{
		return null;
	}
	}
	@Override
    @Transactional
	public List<UserCreation> deleteData(String user) {
		repository.deleteByNewUserName(user);;
		return repository.findAll();
	}
	
	
}
