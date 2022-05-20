package com.takeme.app.backend.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class TakeMeDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private String id;
	private String name;
	private String locale;
	private String logoPath;
	private String coverPath;
	private String copyRightYear;
	private String facebookLink;
	private String instagramLink;
	private String tiktokLink;
	private String whatsappLink;
	
	TakeMeDetails() {}

	public TakeMeDetails(String id, String name, String locale, String logoPath, String coverPath, String copyRightYear,
			String facebookLink, String instagramLink, String tiktokLink, String whatsappLink) {

		this.id = id;
		this.name = name;
		this.locale = locale;
		this.logoPath = logoPath;
		this.coverPath = coverPath;
		this.copyRightYear = copyRightYear;
		this.facebookLink = facebookLink;
		this.instagramLink = instagramLink;
		this.tiktokLink = tiktokLink;
		this.whatsappLink = whatsappLink;
	}

	public String getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getLocale() {
		return locale;
	}

	public String getLogoPath() {
		return logoPath;
	}

	public String getCoverPath() {
		return coverPath;
	}

	public String getCopyRightYear() {
		return copyRightYear;
	}

	public String getFacebookLink() {
		return facebookLink;
	}

	public String getInstagramLink() {
		return instagramLink;
	}

	public String getTiktokLink() {
		return tiktokLink;
	}

	public String getWhatsappLink() {
		return whatsappLink;
	}

}
