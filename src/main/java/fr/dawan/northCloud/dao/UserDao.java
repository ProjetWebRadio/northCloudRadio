package fr.dawan.northCloud.dao;

import java.util.List;

import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

import fr.dawan.northCloud.beans.User;

public class UserDao {

	private HibernateTemplate hibernateTemplate;

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@SuppressWarnings("unchecked")
	@Transactional(readOnly = true)
	public List<User> findAll() {
		return (List<User>) hibernateTemplate.find("FROM User");
	}

	@SuppressWarnings("unchecked")
	@Transactional(readOnly = true)
	public List<User> findAll(int start, int maxElts) {
		return hibernateTemplate.getSessionFactory().getCurrentSession().createQuery("FROM User").setFirstResult(start)
				.setMaxResults(maxElts).list();
	}

	@Transactional(readOnly = true)
	public User findById(long id) {
		return hibernateTemplate.get(User.class, id);
	}

	@SuppressWarnings("unchecked")
	@Transactional(readOnly = true)
	public User findByEmail(String email) {
		List<User> users = (List<User>) hibernateTemplate.find("FROM User u WHERE u.email= ?", email);
		if (users != null && users.size() > 0)
			return users.get(0);
		return null;
	}

	@SuppressWarnings("unchecked")
	@Transactional(readOnly = true)
	public List<User> findAllByUsername(String name) {
		List<User> users = (List<User>) hibernateTemplate.find("FROM User u WHERE u.username like ? ", name + "%");
		System.out.println("users size = " + users.size());
		return users;
	}

	@Transactional
	public void save(User u) throws Exception {
		hibernateTemplate.save(u);
	}

	@Transactional
	public void update(User u) {
		hibernateTemplate.saveOrUpdate(u);
	}

	@Transactional(readOnly = true)
	public long nbUsers() {
		return (Long) hibernateTemplate.find("SELECT COUNT(c.id) FROM User c").get(0);
	}

}
