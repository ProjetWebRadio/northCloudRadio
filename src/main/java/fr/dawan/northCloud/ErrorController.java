package fr.dawan.northCloud;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ErrorController {

	@RequestMapping(value = "/404")
	public String error404() {
		return "404";
	}
}


