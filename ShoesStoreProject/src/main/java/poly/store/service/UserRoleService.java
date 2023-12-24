
package poly.store.service;

import java.util.List;

import poly.store.entity.UserRole;


public interface UserRoleService{
	

	void save(UserRole userRole);

	List<UserRole> findAll();

	List<UserRole> findAllAdminOrDirector();

	void delete(Integer id);
	
}
