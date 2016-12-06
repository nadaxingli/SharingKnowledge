package com.standa.dao;

import java.util.List;

public interface IMenuDao {
public List getMenuList();
public List getSubmenuList(int menuId);
}
