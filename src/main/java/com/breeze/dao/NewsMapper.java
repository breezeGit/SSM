package com.breeze.dao;

import com.breeze.model.NewsModel;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface NewsMapper {
    /**
     * 根据时间区间搜索新闻
     * @param currentTime
     * @param endTime
     * @return
     */
    List<NewsModel> selectNewsListByDate(@Param("currentTime") String currentTime, @Param("endTime") String endTime);

    /**
     * 查询所有新闻
     * @return
     */
    List<NewsModel> selectNewsList();
}
