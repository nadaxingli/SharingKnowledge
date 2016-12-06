package com.standa.repository;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.standa.dao.IContentDao;
import com.standa.model.Content;
@Repository
public class HibernateContentDaoImpl implements IContentDao {
	@Autowired
	SessionFactory session;
	@SuppressWarnings("unchecked")
	@Override
	public List<Content> getContentList() {
		List<Content> listCon = session.getCurrentSession().createCriteria(Content.class).list();
		return listCon;
	}
	@Override
	public void saveContent(Content content) {
		session.getCurrentSession().save(content);
		
	}

}
