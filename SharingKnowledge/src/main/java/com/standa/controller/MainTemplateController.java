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
import com.standa.service.IMenuService;

@Controller
public class MainTemplateController {
@RequestMapping(value="/", method = RequestMethod.GET)
public String getIndexPage(){
	return "Index";
}

@RequestMapping(value="/content", method = RequestMethod.GET)
public String getContentView(){
	return "content";
}
@RequestMapping(value="/content/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
public String getContentViewtesting(@PathVariable("id") int id){
	return "/Technology/Programming/"+id;
}
@RequestMapping(value="/submenucontent/{menu_name}&{submenu_name}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
public String getSubMenuContentView(@PathVariable("menu_name") String menu_name, @PathVariable("submenu_name") String submenu_name){
	return "/"+menu_name+"/"+submenu_name+"/content";
}
//------------Submenu of Programming----------
@RequestMapping(value="/programming/web", method = RequestMethod.GET)
public String getContentView1(){
	return "/Technology/Programming/1";
}
@RequestMapping(value="/programming/mobile", method = RequestMethod.GET)
public String getContentView2(){
	return "/Technology/Programming/2";
}
@RequestMapping(value="/programming/windows", method = RequestMethod.GET)
public String getContentView3(){
	return "/Technology/Programming/3";
}
//------------Submenu of English----------
@RequestMapping(value="/english/reading", method = RequestMethod.GET)
public String getContentView4(){
	return "/Language/English/4";
}
@RequestMapping(value="/english/listening", method = RequestMethod.GET)
public String getContentView5(){
	return "/Language/English/5";
}
@RequestMapping(value="/english/speaking", method = RequestMethod.GET)
public String getContentView6(){
	return "/Language/English/6";
}
@RequestMapping(value="/english/grammar", method = RequestMethod.GET)
public String getContentView7(){
	return "/Language/English/7";
}
}
