package com.standa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.util.UriComponentsBuilder;

import com.standa.model.Content;
import com.standa.service.IContentService;

@Controller
public class ContentController {
	@Autowired
	private IContentService contentService;
	@RequestMapping(value="/contentList", method = RequestMethod.GET)
	public ResponseEntity<List<Content>> getContentList(){
		List<Content> contentList = contentService.getContentList();
		if(contentList.isEmpty()){
			return new ResponseEntity<List<Content>>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<List<Content>>(contentList, HttpStatus.OK);
	}
	@RequestMapping(value = "/saveContent", method = RequestMethod.POST)
    public ResponseEntity<Void> createUser(@RequestBody Content contentxxx,    UriComponentsBuilder ucBuilder) {
        contentService.saveContent(contentxxx);
        HttpHeaders headers = new HttpHeaders();
        return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
    }
}
