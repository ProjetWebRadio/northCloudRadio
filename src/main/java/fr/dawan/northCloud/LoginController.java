package fr.dawan.northCloud;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fr.dawan.northCloud.beans.User;
import fr.dawan.northCloud.dao.UserDao;
import fr.dawan.northCloud.formbeans.InscriptionForm;
import fr.dawan.northCloud.formbeans.LoginForm;

@Controller
public class LoginController {

	@Autowired
	private UserDao userDao;

	@RequestMapping("/authenticate") // @requestMapping(value="/autenticate", method=RequestMethod.GET)
	public ModelAndView showLogin() {
		Map<String, Object> model = new HashMap<>();
		LoginForm lf = new LoginForm("", "");
		model.put("login-form", lf);
		return new ModelAndView("login", model);
	}

	@RequestMapping(value = "/check-login", method = RequestMethod.POST)
	public ModelAndView checkLogin(HttpServletRequest request, @Valid @ModelAttribute("login-form") LoginForm form,
			BindingResult result) {
		Map<String, Object> model = new HashMap<>();

		if (result.hasErrors()) {
			model.put("errors", result);
			model.put("login-form", form);
			return new ModelAndView("login", model);
		}

		User u = userDao.findByEmail(form.getUsername());
		if (u != null && u.getPassword().equals(form.getPassword())) {
			request.getSession().setAttribute("user_id", u.getId());
//			if(u.isAdmin())
//				return new ModelAndView("admin/dashboard");
//			else
			return new ModelAndView("home");

		} else {
			model.put("login-form", form);
			model.put("msg", "Error : incorrect login or password !");
			return new ModelAndView("login", model);
		}

	}

	@RequestMapping("/inscription")
	public ModelAndView inscription() {
		Map<String, Object> model = new HashMap<>();
		InscriptionForm form = new InscriptionForm();
		model.put("inscription-form", form);
		return new ModelAndView("inscription", model);
	}

	@RequestMapping("check-inscription")
	public ModelAndView checkInscription(@Valid @ModelAttribute("inscription-form") InscriptionForm form,
			BindingResult result) {
		Map<String, Object> model = new HashMap<>();
		if (result.hasErrors()) {
			model.put("errors", result);
			model.put("inscription-form", form);
			return new ModelAndView("inscription", model);
		}
		User user = new User();
		user.setName(form.getName());
		user.setLastname(form.getLastname());
		user.setEmail(form.getEmail());
		user.setUsername(form.getUsername());
		user.setPassword(form.getPassword());
		try {
			userDao.save(user);
		} catch (Exception e) {
			e.printStackTrace();
			model.put("msg", "Erreur d'insertion, veuillez réessayer");
			model.put("inscription-form", form);
			return new ModelAndView("inscription", model);
		}

		return new ModelAndView("home");
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

}