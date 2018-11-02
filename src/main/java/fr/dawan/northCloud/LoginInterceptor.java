package fr.dawan.northCloud;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//Teste si l'url demandée est /upload, et que la personne est connectée pour pouvoir upload un fichier
		String requestedURI = request.getRequestURI();
		if (requestedURI.contains("/upload") || requestedURI.contains("/profil")) {
			HttpSession session = request.getSession();
			// Si l'utilisateur n'est pas connecté, on le renvoie sur la page de connexions
			if (session.getAttribute("user_id") == null) {
				response.sendRedirect(request.getContextPath()+"/authenticate");
				return false;
			}
		} 
		return true;
	}
}
