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
	public ModelAndView listSongs(@RequestParam(name = "artistName", required = false) String artistName) {
		Map<String, Object> model = new HashMap<>();
		List<Song> songs = null;
		if (artistName != null && !artistName.equals("")) {
			songs = songDao.findByArtistName(artistName);
		} else {
			model.put("msg", "Aucun morceau trouvé pour l'artiste : " + artistName);
		}
		model.put("songs", songs);
		return new ModelAndView("songs", model);
	}

	@RequestMapping(value = "/songs", method = RequestMethod.GET)
	public ModelAndView listAllSongs() {
		Map<String, Object> model = new HashMap<>();
		List<Song> songs = songDao.findAll();
		model.put("songs", songs);
		return new ModelAndView("songs", model);
	}

	@RequestMapping(value = "/songs/play/{id}", method = RequestMethod.GET)
	public ModelAndView playSong(@PathVariable(name="id") String songId) {
		Map<String, Object> model = new HashMap<>();
		try {
			Song song = songDao.findById(Long.parseLong(songId));
			String songUrl = song.getUrl();
			String coverUrl = song.getCoverUrl();
			model.put("songUrl", songUrl);
			model.put("coverUrl", coverUrl);
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
