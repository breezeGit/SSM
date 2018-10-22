package com.breeze.controller;

import com.breeze.model.NewsModel;
import com.breeze.service.NewsService;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/news")
public class NewsController {
    @Resource
    NewsService newsService;

    @RequestMapping("/getAllNews")
    public String getAllNews(Model model){
        List<NewsModel> newsModelList=newsService.selectNewsList(0);
        model.addAttribute("newsList",newsModelList);
        return "user/news";
    }
}
