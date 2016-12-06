package com.standa.service;

import java.util.List;

import com.standa.model.Content;

public interface IContentService {
public List<Content> getContentList();
public void saveContent(Content content);
}
