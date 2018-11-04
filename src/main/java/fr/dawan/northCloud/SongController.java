package fr.dawan.northCloud;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fr.dawan.northCloud.beans.Song;
import fr.dawan.northCloud.dao.SongDao;

@Controller
public class SongController {

	@Autowired
	private SongDao songDao;

	@RequestMapping(value = "/songs/search", method = RequestMethod.GET)
	public ModelAndView listSongs(@RequestParam(name = "username", required = false) String username) {
		Map<String, Object> model = new HashMap<>();
		List<Song> songs = null;
		if (username != null && !username.equals("")) {
			songs = songDao.findByArtistName(username);
		} else {
			model.put("msg", "L'utilisateur " + username + " n'existe pas");
		}
		model.put("songs", songs);
		return new ModelAndView("songs", model);
	}

	@RequestMapping(value = "/songs", method = RequestMethod.GET)
	public ModelAndView listAllSongs(@RequestParam(name = "page", defaultValue = "1") int page) {
		Map<String, Object> model = new HashMap<>();
		List<Song> songs = songDao.findAll((page - 1) * 10, 10);
		long currentPage = page;
		long maxPage = songDao.nbSongs() / 10 + 1;
		model.put("songs", songs);
		model.put("maxPage", maxPage);
		model.put("page", currentPage);
		return new ModelAndView("songs", model);
	}

	@RequestMapping(value = "/songs/category/{category}", method = RequestMethod.GET)
	public ModelAndView listSongsByCategory(@RequestParam(name = "page", defaultValue = "1") int page,
			@PathVariable(name = "category") String category) {
		Map<String, Object> model = new HashMap<>();
		List<Song> songs = songDao.findByCategory(category);
//		long currentPage = page;
//		long maxPage = songDao.nbSongs() / 10 + 1;

//		model.put("maxPage", maxPage);
//		model.put("page", currentPage);
		model.put("songs", songs);
		return new ModelAndView("songs", model);
	}

	@RequestMapping(value = "/songs/play/{id}", method = RequestMethod.GET)
	public ModelAndView playSong(@PathVariable(name = "id") String songId) {
		Map<String, Object> model = new HashMap<>();
		try {
			Song song = songDao.findById(Long.parseLong(songId));
			model.put("song", song);
			return new ModelAndView("song-play", model);
		} catch (Exception e) {
			e.printStackTrace();
			return new ModelAndView("redirect:/");
		}
	}

	@RequestMapping("/delete")
	public ModelAndView delete(Long id) throws IOException {
		songDao.deleteById(id);
		return new ModelAndView("redirect:/profil");
	}

}
