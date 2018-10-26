package fr.dawan.northCloud;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import fr.dawan.northCloud.utils.MimeTools;

@RestController
public class AudioRestController {

	@RequestMapping(value = "/next-song", method = RequestMethod.GET, produces = "application/json")
	public String nextSong(Model model) {
		//TODO get an other file from somewhere
		//TODO check random and avoid duplicate
		String nextFile = "http://demo.dawan.biz/mohamed/radioHead.mp3";
		String mimeType = MimeTools.getTypeMime(nextFile);
		return "{\"src\":\""+nextFile+"\", \"type\":\""+mimeType+"\"}";
	}
}
