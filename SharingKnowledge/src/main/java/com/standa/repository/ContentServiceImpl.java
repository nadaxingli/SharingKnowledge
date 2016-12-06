package com.standa.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.standa.dao.IContentDao;
import com.standa.model.Content;
import com.standa.service.IContentService;
@Service
@Transactional
public class ContentServiceImpl implements IContentService {
	@Autowired
	private IContentDao contentDao;
	public List<Content> getContentList() {
		return contentDao.getContentList();
	}
	public void saveContent(Content content) {
		contentDao.saveContent(content);
		
	}

}
