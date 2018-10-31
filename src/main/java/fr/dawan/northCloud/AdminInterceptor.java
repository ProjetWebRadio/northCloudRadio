package fr.dawan.northCloud;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import fr.dawan.northCloud.beans.User;
import fr.dawan.northCloud.dao.UserDao;

public class AdminInterceptor extends HandlerInterceptorAdapter {
	
	@Autowired
	private UserDao userDao;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String requestedURI = request.getRequestURI();
		if (requestedURI.contains("/admin")) {
			HttpSession session = request.getSession();
			if (session.getAttribute("user_id") == null) {
				response.sendRedirect(request.getContextPath() );
				return false;
			} else {
				User u = userDao.findById((long) session.getAttribute("user_id"));
				if(u == null || !u.isAdmin()) {
					response.sendRedirect(request.getContextPath() );
					return false;
				}
			}
		} 
		return true;
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	
	
}
