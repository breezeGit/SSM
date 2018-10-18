package com.breeze.service.impl;

import com.breeze.dao.NewsMapper;
import com.breeze.model.NewsModel;
import com.breeze.service.NewsService;
import com.breeze.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Service("newsService")
public class NewsServiceImpl implements NewsService {

    @Autowired
    NewsMapper newsMapper;

    /**
     * 根据时间区间查询新闻
     * 0---全部
     * 1---3天内
     * 2---1周内
     * 3---1月内
     * @param timeInterval
     * @return
     */
    public List<NewsModel> selectNewsList(Integer timeInterval) {
        Date currentDate=new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String currentDate_str=sdf.format(currentDate.getTime());
        switch (timeInterval){
            case 0:
                return newsMapper.selectNewsList();
            case 1:
                Calendar calendar1 = Calendar.getInstance();
                calendar1.add(Calendar.DATE, -3);
                String endTime_str = sdf.format(calendar1.getTime());
                return newsMapper.selectNewsListByDate(currentDate_str+" 23:59:59",endTime_str+" 00:00:00");
            case 2:
                String endTime=sdf.format(DateUtils.getTimeInterval(currentDate).getTime());
                return newsMapper.selectNewsListByDate(currentDate_str+" 23:59:59",endTime+" 00:00:00");
            case 3:
                String endTime1=sdf.format(DateUtils.getBeginDayOfMonth(currentDate).getTime());
                return newsMapper.selectNewsListByDate(currentDate_str+" 23:59:59",endTime1+" 00:00:00");
            //默认查询全部
            default:
                return newsMapper.selectNewsList();
        }
    }
}
