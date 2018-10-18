package com.breeze.model;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;

/**
 * 新闻实体类
 */
public class NewsModel implements Serializable {
    private Long news_id;
    private String news_title;
    private String news_content;
    private Date news_date;
    private String news_img1;
    private String news_img2;
    private String news_img3;
    private String news_img4;
    private String news_img5;

    public Long getNews_id() {
        return news_id;
    }

    public void setNews_id(Long news_id) {
        this.news_id = news_id;
    }

    public String getNews_title() {
        return news_title;
    }

    public void setNews_title(String news_title) {
        this.news_title = news_title;
    }

    public String getNews_content() {
        return news_content;
    }

    public void setNews_content(String news_content) {
        this.news_content = news_content;
    }

    public Date getNews_date() {
        return news_date;
    }

    public void setNews_date(Date news_date) {
        this.news_date = news_date;
    }

    public String getNews_img1() {
        return news_img1;
    }

    public void setNews_img1(String news_img1) {
        this.news_img1 = news_img1;
    }

    public String getNews_img2() {
        return news_img2;
    }

    public void setNews_img2(String news_img2) {
        this.news_img2 = news_img2;
    }

    public String getNews_img3() {
        return news_img3;
    }

    public void setNews_img3(String news_img3) {
        this.news_img3 = news_img3;
    }

    public String getNews_img4() {
        return news_img4;
    }

    public void setNews_img4(String news_img4) {
        this.news_img4 = news_img4;
    }

    public String getNews_img5() {
        return news_img5;
    }

    public void setNews_img5(String news_img5) {
        this.news_img5 = news_img5;
    }
}
