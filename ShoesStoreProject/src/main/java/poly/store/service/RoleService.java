
package poly.store.service;

import java.util.List;

import poly.store.entity.Role;


public interface RoleService {
	

	Role findRoleById(int roleId);
	

	List<String> getRoleNames(int userId);

}
