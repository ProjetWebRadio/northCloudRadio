package fr.dawan.northCloud;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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
	public ModelAndView adminUsers(@RequestParam(name = "page", defaultValue = "1") int page) {
		Map<String, Object> model = new HashMap<String, Object>();
		List<User> users = userDao.findAll((page - 1) * 5, 5);
		long currentPage = page;
		long maxPage = userDao.nbUsers() / 5 + 1;
		model.put("users", users);
		model.put("maxPage", maxPage);
		model.put("page", currentPage);
		return new ModelAndView("admin/admin-users", model);
	}

	@RequestMapping("admin/users/{id}")
	public ModelAndView userManagement(@PathVariable(name = "id") long userId) {
		Map<String, Object> model = new HashMap<String, Object>();
		User u = userDao.findById(userId);
		List<Song> songs = songDao.findByArtistName(u.getUsername());
		model.put("user", u);
		model.put("songs", songs);
		return new ModelAndView("admin/admin-user", model);
	}

	@RequestMapping("/admin/users/ban-unban")
	public ModelAndView blockUser(@RequestParam(name = "id") String userId) {
		User u = userDao.findById(Long.parseLong(userId));
		u.setBanned(!u.isBanned());
		userDao.update(u);
		return new ModelAndView("redirect:/admin/users");
	}

	@RequestMapping("/admin/songs")
	public ModelAndView adminSongs(@RequestParam(name = "page", defaultValue = "1") int page) {
		Map<String, Object> model = new HashMap<String, Object>();
		List<Song> songs = songDao.findAll((page - 1) * 5, 5);
		long currentPage = page;
		long maxPage = songDao.nbSongs() / 5 + 1;
		model.put("songs", songs);
		model.put("maxPage", maxPage);
		model.put("page", currentPage);
		return new ModelAndView("admin/admin-songs", model);
	}

	@RequestMapping("admin/songs/{id}")
	public ModelAndView songManagement(@PathVariable(name = "id") int songId) {
		Map<String, Object> model = new HashMap<String, Object>();
		Song song = songDao.findById(songId);
		model.put("song", song);
		return new ModelAndView("admin/user-management", model);
	}

	@RequestMapping("/admin/songs/delete")
	public ModelAndView deleteSong(@RequestParam(name = "id") long songId) {
		Song s = songDao.findById(songId);
		songDao.delete(s);
		return new ModelAndView("redirect:/admin/songs");
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
