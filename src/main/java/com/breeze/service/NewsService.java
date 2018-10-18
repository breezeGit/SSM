package com.breeze.service;

import com.breeze.model.NewsModel;

import java.util.Date;
import java.util.List;

public interface NewsService {
    List<NewsModel> selectNewsList(Integer timeInterval);
}
