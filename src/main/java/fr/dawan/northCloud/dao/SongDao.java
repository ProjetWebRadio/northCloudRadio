package fr.dawan.northCloud.dao;

import java.io.IOException;
import java.util.List;

import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

import fr.dawan.northCloud.beans.Song;
import fr.dawan.northCloud.utils.BucketManager;

public class SongDao {
	private HibernateTemplate hibernateTemplate;

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@SuppressWarnings("unchecked")
	@Transactional(readOnly = true)
	public List<Song> findAll() {
		return (List<Song>) hibernateTemplate.find("FROM Song");
	}

	@SuppressWarnings("unchecked")
	@Transactional(readOnly = true)
	public List<Song> findAll(int start, int maxElts) {
		return hibernateTemplate.getSessionFactory().getCurrentSession().createQuery("FROM Song").setFirstResult(start)
				.setMaxResults(maxElts).list();
	}

	@Transactional(readOnly = true)
	public Song findById(long id) {
		return hibernateTemplate.get(Song.class, id);
	}

	@Transactional
	public void save(Song s) throws IOException {
		hibernateTemplate.save(s);
		try {
			BucketManager.saveFile(s);
		} catch (IOException e) {
			hibernateTemplate.delete(s);
			throw e;
		}
	}

	@Transactional
	public void update(Song s) {
		hibernateTemplate.saveOrUpdate(s);
	}

	@Transactional(readOnly = true)
	public long nbSongs() {
		return (Long) hibernateTemplate.find("SELECT COUNT(c.id) FROM Song c").get(0);
	}

	@SuppressWarnings("unchecked")
	@Transactional
	public List<Song> findByArtistName(String artistName) {
		List<Song> songs = (List<Song>) hibernateTemplate.find("SELECT s FROM Song s WHERE s.user.username = ?",
				artistName);
		return songs;
	}
   
	
	@SuppressWarnings("unchecked")
	@Transactional
    public List<Song> findByUserId(long id){
    	List<Song> songs = (List<Song>) hibernateTemplate.find("SELECT s FROM Song s WHERE s.user.id = ?",
				id); 
    return songs;
    }
	
	@SuppressWarnings("unchecked")
	@Transactional
	public List<Song> findByCategory(String category){
		List<Song> songs = (List<Song>) hibernateTemplate.find("SELECT s FROM Song s WHERE s.category = ? ", category);
		return songs;
	}
	
	@Transactional
	public void delete(Song s) {
		try {
			BucketManager.deleteFile(s);
		} catch (IOException e) {
			e.printStackTrace();
		}
		hibernateTemplate.delete(s);
	}

	@Transactional
	public void deleteById(Long id) {
		Song s = this.findById(id);
		this.delete(s);
	}
}
