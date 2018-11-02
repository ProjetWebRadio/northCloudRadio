package fr.dawan.northCloud;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fr.dawan.northCloud.beans.Song;
import fr.dawan.northCloud.dao.SongDao;


@Controller
public class ProfilController {

	@Autowired
	private SongDao songDao;
	
	@RequestMapping("/profil")
	public ModelAndView showProfil(HttpServletRequest request) {
		long userId = (long) request.getSession().getAttribute("user_id");
		Map<String, Object> model = new HashMap<>();
		List<Song> songs = songDao.findByUserId(userId);
		model.put("songs", songs);
		return new ModelAndView("profil",model);
	}
    
	@RequestMapping("/profil/songs/delete")
	public ModelAndView deleteSong(HttpServletRequest request,  @RequestParam(name ="id") long songId ) {
		Song s = songDao.findById(songId);
		String userId = (String) request.getSession().getAttribute("user_id");
		if(userId != null && (Long.parseLong(userId)) == s.getUser().getId()) {	
			songDao.delete(s);
        }
		
		return new ModelAndView("redirect:/profil");
	}

	
}