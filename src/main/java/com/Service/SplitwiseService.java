package com.Service;

import java.util.List;

import com.Model.Admin;
import com.Model.UserCreation;

public interface SplitwiseService {

	void SaveUser(UserCreation usercreation);

	

	boolean authenticateUser(String username, String password);



	List<Admin> loginCheck(String username, String password);



	List<UserCreation> loginCheckAdmin(String username, String password);



	List<UserCreation> deleteData(String user);





	

	

	


	  
}
