package com.standa.repository;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.standa.dao.IMenuDao;
import com.standa.model.Menu;
import com.standa.model.Submenu;
import com.standa.nsdsd.HibernateStandaGenericDaoImpl;

@Repository
public class HibernateMenuDaoImpl extends HibernateStandaGenericDaoImpl<Menu, Integer>
implements IMenuDao{
	@Autowired
	SessionFactory session;
	@SuppressWarnings("unchecked")
	@Override
	public List<Menu> getMenuList() {
		List<Menu> mainMenuList = session.getCurrentSession().createQuery("from Menu m where m.submenu_id=0").list();
		for(Menu mn: mainMenuList){
			List<Menu> subMenuList = session.getCurrentSession().createQuery("from Menu m where m.submenu_id="+mn.getMenu_id()).list();
			mn.setSubMenu(subMenuList);
		}
		return mainMenuList;
		//return getAll();
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Submenu> getSubmenuList(int menuId) {
		List<Submenu> subMenuList = session.getCurrentSession().createQuery("from Submenu m where m.menu_id="+menuId).list();
		return subMenuList;
	}

}
