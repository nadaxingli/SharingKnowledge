package com.standa.service;

import java.util.List;

public interface IMenuService {
	public List getMenuList();
	public List getSubmenuList(int menuId);

}
