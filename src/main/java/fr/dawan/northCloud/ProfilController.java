package fr.dawan.northCloud;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class ProfilController {

//	@Autowired
//	private UserDao userDao;
	@RequestMapping("/profil")
	public ModelAndView showProfil(HttpServletRequest request) {
		if(request.getSession().getAttribute("user_id") == null) {
			return new ModelAndView("redirect:/authenticate");
		} 
		return new ModelAndView("profil");
	}
}