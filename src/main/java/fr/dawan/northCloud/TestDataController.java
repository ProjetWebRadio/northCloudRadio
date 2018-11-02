package fr.dawan.northCloud;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fr.dawan.northCloud.beans.User;
import fr.dawan.northCloud.dao.SongDao;
import fr.dawan.northCloud.dao.UserDao;

@Controller
public class TestDataController {

	@Autowired
	private UserDao userDao;

	@Autowired
	private SongDao songDao;

	@RequestMapping(value = "/test-data", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		User u1 = new User();
		u1.setEmail("halim@dawan.fr");
		u1.setAdmin(true);
		u1.setPassword("password");
		u1.setUsername("halim");
		u1.setName("halim");
		u1.setLastname("deville");
		try {
			userDao.save(u1);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "home";
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public SongDao getSongDao() {
		return songDao;
	}

	public void setSongDao(SongDao songDao) {
		this.songDao = songDao;
	}

}