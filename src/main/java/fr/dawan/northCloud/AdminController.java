package fr.dawan.northCloud;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fr.dawan.northCloud.beans.Song;
import fr.dawan.northCloud.beans.User;
import fr.dawan.northCloud.dao.SongDao;
import fr.dawan.northCloud.dao.UserDao;

@Controller
public class AdminController {
	
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private SongDao songDao;

	@RequestMapping("/admin/dashboard")
	public ModelAndView adminDashboard() {
		return new ModelAndView("admin/dashboard");
	}
	
	@RequestMapping("/admin/users")
	public ModelAndView adminUsers() {
		Map<String, Object> model = new HashMap<>();
		List<User> users = userDao.findAll();
		model.put("users", users);
		return new ModelAndView("admin/users", model);
	}
	
	@RequestMapping("/admin/block-user")
	public ModelAndView blockUser(@RequestParam(name="id") String userId) {
		User u = userDao.findById(Long.parseLong(userId));
		u.setBlocked(true);
		userDao.update(u);
		return new ModelAndView("redirect:/admin/users");
	}
	
	@RequestMapping("/admin/songs")
	public ModelAndView adminSongs() {
		Map<String, Object> model = new HashMap<>();
		List<Song> songs = songDao.findAll();
		model.put("songs", songs);
		return new ModelAndView("admin/songs", model);
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
