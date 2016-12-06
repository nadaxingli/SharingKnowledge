package com.standa.dao;

import java.util.List;

import com.standa.model.Content;

public interface IContentDao {
	public List<Content> getContentList();
	public void saveContent(Content content);
}
