package fr.dawan.northCloud;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import fr.dawan.northCloud.beans.Song;
import fr.dawan.northCloud.dao.SongDao;

@RestController
public class AudioRestController {

	@Autowired
	private SongDao songDao;
	
	@RequestMapping(value = "/next-song", method = RequestMethod.GET, produces = "application/json")
	public Song nextSong() {
		List<Song> songs = songDao.findAll();
		int songNumber = (int) (Math.random() * songs.size());
		Song song = songs.get(songNumber);
		return song;
	}
}
