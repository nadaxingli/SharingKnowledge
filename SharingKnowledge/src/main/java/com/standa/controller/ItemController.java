package com.standa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.standa.model.Menu;
import com.standa.model.Submenu;
import com.standa.service.IMenuService;

@Controller
public class ItemController {
	@Autowired
	IMenuService menuService;
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/menu", method = RequestMethod.GET)
	   public ResponseEntity<List<Menu>> listAllMenus() {
		List<Menu> menuList = menuService.getMenuList();
	       if(menuList.isEmpty()){
	           return new ResponseEntity<List<Menu>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
	       }
	       return new ResponseEntity<List<Menu>>(menuList, HttpStatus.OK);
	   }
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/submenu/{menuId}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	   public ResponseEntity<List<Submenu>> listAllSubMenus(@PathVariable("menuId") int menuId) {
		List<Submenu> menuList = menuService.getSubmenuList(menuId);
	       if(menuList.isEmpty()){
	           return new ResponseEntity<List<Submenu>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
	       }
	       return new ResponseEntity<List<Submenu>>(menuList, HttpStatus.OK);
	   }
}
