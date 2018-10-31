package fr.dawan.northCloud;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import fr.dawan.northCloud.beans.User;
import fr.dawan.northCloud.dao.UserDao;

@RestController
public class UserRestController {
	
	@Autowired
	private UserDao userDao;

	@RequestMapping(value = "/get-users", method = RequestMethod.GET, produces = "application/json")
	public List<User> getUsers(@RequestParam(name="username") String username) {
		List<User> users = userDao.findAllByUsername(username);
		return users;
	}
}
