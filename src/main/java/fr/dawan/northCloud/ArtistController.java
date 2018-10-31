package fr.dawan.northCloud;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fr.dawan.northCloud.beans.User;
import fr.dawan.northCloud.dao.UserDao;

@Controller
public class ArtistController {
	
	@Autowired
	private UserDao userDao;

	@RequestMapping("/artists")
	public ModelAndView listArtists(@RequestParam(name = "page", defaultValue = "1") int page) {
		Map<String, Object> model = new HashMap<>();
		List<User> artists = userDao.findAll((page - 1) * 10, 10);
		long currentPage = page;
		long maxPage = userDao.nbUsers() / 10 + 1;
		model.put("artists", artists);
		model.put("maxPage", maxPage);
		model.put("page", currentPage);
		return new ModelAndView("artists", model);
	}
}
