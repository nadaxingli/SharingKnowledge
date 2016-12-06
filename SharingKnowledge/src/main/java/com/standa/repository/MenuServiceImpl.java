package com.standa.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.standa.dao.IMenuDao;
import com.standa.model.Content;
import com.standa.service.IMenuService;
@Service
@Transactional
public class MenuServiceImpl implements IMenuService {
@Autowired
private IMenuDao menuDao;
	@SuppressWarnings("unchecked")
	public List<Content> getMenuList() {
		return menuDao.getMenuList();
	}
	@SuppressWarnings("unchecked")
	public List<Content> getSubmenuList(int menuId) {
		return menuDao.getSubmenuList(menuId);
	}

}
