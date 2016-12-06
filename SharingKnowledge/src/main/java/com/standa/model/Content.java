package com.standa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="content")
public class Content {
@Id
@Column(name = "content_id")
@GeneratedValue(strategy = GenerationType.AUTO)
private int contentId;

@Column(name="title")
private String title;

@Column(name="file_link")
private String fileLink;

@Column(name="submenu_id")
private int submenuId;

public int getContentId() {
	return contentId;
}

public void setContentId(int contentId) {
	this.contentId = contentId;
}

public String getTitle() {
	return title;
}

public void setTitle(String title) {
	this.title = title;
}

public String getFileLink() {
	return fileLink;
}

public void setFileLink(String fileLink) {
	this.fileLink = fileLink;
}

public int getSubmenuId() {
	return submenuId;
}

public void setSubmenuId(int submenuId) {
	this.submenuId = submenuId;
}

}
