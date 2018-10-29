package fr.dawan.northCloud;

import java.io.IOException;
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

import fr.dawan.northCloud.beans.Song;
import fr.dawan.northCloud.beans.User;
import fr.dawan.northCloud.dao.SongDao;
import fr.dawan.northCloud.dao.UserDao;
import fr.dawan.northCloud.formbeans.UploadForm;
import fr.dawan.northCloud.utils.BucketManager;
import fr.dawan.northCloud.utils.MimeTools;

@Controller
public class UploadController {

	@Autowired
	private UserDao userDao;

	@Autowired
	private SongDao songDao;

	@RequestMapping("/upload")
	public ModelAndView upload() {
		Map<String, Object> model = new HashMap<>();
		UploadForm upf = new UploadForm();
		model.put("upload-form", upf);
		return new ModelAndView("upload", model);
	}

	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public ModelAndView uploadValidation(HttpServletRequest request,
			@Valid @ModelAttribute("upload-form") UploadForm form, BindingResult result) {
		Map<String, Object> model = new HashMap<>();
		Song s = new Song();
		User user;

		if (result.hasErrors()) {
			model.put("errors", result);
			model.put("upload-form", form);
			return new ModelAndView("upload", model);
		}

		user = userDao.findById((long) request.getSession().getAttribute("user_id"));
		String mimeType = MimeTools.getTypeMime(form.getSongFile().getOriginalFilename());
		//Si le type MIME du fichier correspond à celui d'un fichier audio, alors on tente de l'ajouter
		if (mimeType != null) {
			s.setSongFile(form.getSongFile());
			s.setOriginalName(form.getSongFile().getOriginalFilename());
			s.setName(form.getName());
			s.setUser(user);
			s.setCategory(form.getCategory());
			if (!form.getCoverFile().isEmpty()) {
				s.setCoverFile(form.getCoverFile());
				s.setCover(form.getCoverFile().getOriginalFilename());
			}
			try {
				songDao.save(s);
			} catch (IOException e) {
				model.put("msg", "Erreur: impossible d'upload le fichier");
			}
		} else {
			model.put("msg", "Erreur: le fichier n'est pas un fichier audio");
			return new ModelAndView("upload", model);
		}

		model.put("upload-form", form);
		return new ModelAndView("upload", model);
	}

}
