package fr.dawan.northCloud;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;



import fr.dawan.northCloud.beans.Song;

import fr.dawan.northCloud.dao.SongDao;
import fr.dawan.northCloud.utils.MimeTools;

@RestController
public class AudioRestController {

	@Autowired
	private SongDao songDao;
	
	@RequestMapping(value = "/next-song", method = RequestMethod.GET, produces = "application/json")
	public String nextSong() {
		List<Song> songs = songDao.findAll();
		int songNumber = (int) (Math.random() * songs.size());
		Song song = songs.get(songNumber);
		String nextFile = song.getUrl();
		String cover = song.getCoverUrl();
		String artistName = song.getUser().getUsername();
		String mimeType = MimeTools.getTypeMime(song.getOriginalName());
		return "{\"name\":\""+song.getName()+"\",\"src\":\""+nextFile+"\", \"type\":\""+mimeType+"\", \"cover\":\""+cover+ "\"}";
	}
}
