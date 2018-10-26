package fr.dawan.northCloud;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import fr.dawan.northCloud.beans.User;
import fr.dawan.northCloud.dao.UserDao;

@Controller
public class ArtistController {
	
	@Autowired
	private UserDao userDao;

	@RequestMapping("/artists")
	public ModelAndView listArtists() {
		Map<String, Object> model = new HashMap<>();
		List<User> artists = userDao.findAllArtists();
		model.put("artists", artists);
		return new ModelAndView("artists", model);
	}
}
