package com.breeze.utils;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * 运行测试类
 */
public class RunUtils {
    public static  void main(String [] args){
        Calendar cal = Calendar.getInstance();
        cal.setTime(new Date());
        cal.set(Calendar.DAY_OF_MONTH, 1);
        System.out.println (new SimpleDateFormat("yyyy-MM-dd").format(cal.getTime()));
        cal.roll(Calendar.DAY_OF_MONTH, -1);
        System.out.println (new SimpleDateFormat("yyyy-MM-dd").format(cal.getTime()));
    }


}
