package fr.dawan.northCloud.utils;

public class MimeTools {

	public static String getTypeMime(String fileName) {
		if(fileName.endsWith(".mp3"))
			return "audio/mp3";
		else if(fileName.endsWith(".ogg"))
			return "audio/ogg";
		else if(fileName.endsWith(".wav"))
	        return "audio/wav";
		else if (fileName.endsWith(".flac"))
			return "audio/flac";
		return null;
	}
}



