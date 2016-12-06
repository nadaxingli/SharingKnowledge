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
@Table(name="submenu")
public class Submenu {
	@Id
	@Column(name="submenu_id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int submenu_id;

	@Column(name="sub_submenu_id")
	private int sub_submenu_id;

	@Column(name="submenu_name")
	private String submenu_name;
	
	@Column(name="menu_id")
	private int menu_id;

	@Transient
	private List<Submenu> sub_subMenu;

	public int getSubmenu_id() {
		return submenu_id;
	}

	public void setSubmenu_id(int submenu_id) {
		this.submenu_id = submenu_id;
	}

	public int getSub_submenu_id() {
		return sub_submenu_id;
	}

	public void setSub_submenu_id(int sub_submenu_id) {
		this.sub_submenu_id = sub_submenu_id;
	}

	public String getSubmenu_name() {
		return submenu_name;
	}

	public void setSubmenu_name(String submenu_name) {
		this.submenu_name = submenu_name;
	}

	public int getMenu_id() {
		return menu_id;
	}

	public void setMenu_id(int menu_id) {
		this.menu_id = menu_id;
	}

	public List<Submenu> getSub_subMenu() {
		return sub_subMenu;
	}

	public void setSub_subMenu(List<Submenu> sub_subMenu) {
		this.sub_subMenu = sub_subMenu;
	}

	
}
