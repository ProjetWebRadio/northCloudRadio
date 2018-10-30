package fr.dawan.northCloud.utils;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import com.amazonaws.auth.profile.ProfileCredentialsProvider;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.DeleteObjectRequest;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.S3Object;

import fr.dawan.northCloud.beans.Song;

public final class BucketManager {

	private static final String BUCKET_NAME = "mp3webradio-benjixxx";

	public static final String BUCKET_URL = "https://s3.eu-west-3.amazonaws.com/mp3webradio-benjixxx/";

	private BucketManager() {
	}

	/**
	 * Permet de récupérer un fichier depuis le bucket sur Amazon S3
	 * 
	 * @param fileKeyName La clé du fichier dans le bucket
	 * @return Un InputStream sur le fichier demandé
	 */
	public static InputStream getObjectFromBucket(String fileKeyName) {
		final AmazonS3 s3 = AmazonS3ClientBuilder.standard().withRegion(Regions.EU_WEST_3)
				.withCredentials(new ProfileCredentialsProvider()).build();
		S3Object object = s3.getObject(BUCKET_NAME, fileKeyName);
		InputStream objectData = object.getObjectContent();
		return objectData;
	}

	public static void saveFile(Song s) throws IOException {
		final AmazonS3 s3 = AmazonS3ClientBuilder.standard().withRegion(Regions.EU_WEST_3)
				.withCredentials(new ProfileCredentialsProvider()).build();
		File song = MultipartFileToFile.convert(s.getSongFile());
		s3.putObject(new PutObjectRequest(BUCKET_NAME, s.getBucketKey(), song)
				.withCannedAcl(CannedAccessControlList.PublicRead));
		if (!s.getCoverFile().isEmpty()) {
			File cover = MultipartFileToFile.convert(s.getCoverFile());
			s3.putObject(new PutObjectRequest(BUCKET_NAME, s.getCoverKey(), cover)
					.withCannedAcl(CannedAccessControlList.PublicRead));
		}
	}

	public static void deleteFile(Song s) throws IOException {
		final AmazonS3 s3 = AmazonS3ClientBuilder.standard().withRegion(Regions.EU_WEST_3)
				.withCredentials(new ProfileCredentialsProvider()).build();
		s3.deleteObject(new DeleteObjectRequest(BUCKET_NAME, s.getBucketKey()));
		if (s.getCoverKey() != null) {
			s3.deleteObject(new DeleteObjectRequest(BUCKET_NAME, s.getCoverKey()));
		}

	}
}
