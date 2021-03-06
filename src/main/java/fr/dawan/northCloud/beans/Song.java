package fr.dawan.northCloud.beans;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.persistence.Version;

import org.springframework.web.multipart.MultipartFile;

import fr.dawan.northCloud.utils.BucketManager;
import fr.dawan.northCloud.utils.MimeTools;

@Entity
@Table(name = "song")
public class Song {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(nullable = false)
	private String name;

	@Column(nullable = false)
	private String originalName;

	@Column
	private String category;

	@ManyToOne(cascade = {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.REFRESH})
	private User user;

	@Column
	private String cover;

	@Version
	private int version;

	@Transient
	private MultipartFile songFile;

	@Transient
	private MultipartFile coverFile;

	public Song() {
	}

	public Song(String category, User user) {
		this.category = category;
		this.user = user;
	}

	public Song(Long id, String category, User user) {
		this.id = id;
		this.category = category;
		this.user = user;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getOriginalName() {
		return originalName;
	}

	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getCover() {
		return cover;
	}

	public void setCover(String cover) {
		this.cover = cover;
	}

	public MultipartFile getSongFile() {
		return songFile;
	}

	public void setSongFile(MultipartFile songFile) {
		this.songFile = songFile;
	}

	public MultipartFile getCoverFile() {
		return coverFile;
	}

	public void setCoverFile(MultipartFile coverFile) {
		this.coverFile = coverFile;
	}
	
	public String getMimeType() {
		return MimeTools.getTypeMime(this.getOriginalName());
	}

	public String getBucketKey() {
		return this.getName() + "-" + this.getId();
	}

	public String getUrl() {
		return BucketManager.BUCKET_URL + this.getBucketKey();
	}

	public String getCoverKey() {
		if (this.getCover() != null && !this.getCover().equals("")) {
			return this.getCover() + "-" + this.getId();
		} else {
			return null;
		}
	}

	public String getCoverUrl() {
		if (this.getCoverKey() != null) {
			return BucketManager.BUCKET_URL + this.getCoverKey();
		} else {
			return "https://s3.eu-west-3.amazonaws.com/mp3webradio-benjixxx/music-note.png";
		}
	}
}
