package com.standa.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="menu")
public class Menu {
	
@Id
@Column(name="menu_id")
@GeneratedValue(strategy = GenerationType.AUTO)
private int menu_id;

@Column(name="submenu_id")
private int submenu_id;

@Column(name="menu_name")
private String menu_name;

@Transient
private List<Menu> subMenu;

public int getMenu_id() {
	return menu_id;
}

public void setMenu_id(int menu_id) {
	this.menu_id = menu_id;
}

public int getSubmenu_id() {
	return submenu_id;
}

public void setSubmenu_id(int submenu_id) {
	this.submenu_id = submenu_id;
}

public String getMenu_name() {
	return menu_name;
}

public void setMenu_name(String menu_name) {
	this.menu_name = menu_name;
}

public List<Menu> getSubMenu() {
	return subMenu;
}

public void setSubMenu(List<Menu> subMenu) {
	this.subMenu = subMenu;
}



}
