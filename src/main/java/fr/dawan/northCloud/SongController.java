package fr.dawan.northCloud;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	
	
	
}
