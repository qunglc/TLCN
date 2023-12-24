
package poly.store.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import poly.store.entity.User;


public interface UserDao extends JpaRepository<User, Integer> {

	@Query("SELECT u FROM User u WHERE u.email = :uemail and u.Deleteday = null")
	User findUserByEmail(@Param("uemail") String email);


	@Query("SELECT u FROM User u WHERE u.Deleteday = null")
	List<User> findAllUserAnable();

	@Query(value = "SELECT * FROM Users WHERE NOT EXISTS(SELECT * FROM Employees WHERE Users.Id = Employees.User_Id) AND DeleteDay is NULL", nativeQuery = true)
	List<User> findAllUserNotRoleAdmin();
	

	@Query("SELECT u FROM User u WHERE u.Deleteday = null AND u.subscribe = 1")
	List<User> getListUserEnableSubscribe();

}
