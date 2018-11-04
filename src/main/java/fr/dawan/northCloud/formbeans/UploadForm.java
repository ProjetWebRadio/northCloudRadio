package fr.dawan.northCloud.formbeans;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.springframework.web.multipart.MultipartFile;

public class UploadForm {

	@NotEmpty
	private String name;
	
//	@Pattern(regexp = "'s/(^.|[ ]+.)/\U&/g'", message = "Première lettre en majuscule")
	private String category;
	
	private MultipartFile coverFile;
	
	@NotNull
	private MultipartFile songFile;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public MultipartFile getCoverFile() {
		return coverFile;
	}

	public void setCoverFile(MultipartFile coverFile) {
		this.coverFile = coverFile;
	}

	public MultipartFile getSongFile() {
		return songFile;
	}

	public void setSongFile(MultipartFile songFile) {
		this.songFile = songFile;
	}
	
}
