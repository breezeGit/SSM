package com.breeze.common;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/*
 * 通用的返回类
 */
public class Msg implements Serializable {
    //返回码，100表示成功。200表示失败
    private int code;
    //提示信息
    private String msg;
    //用户要返回的数据
    private Map<String, Object> map=new HashMap<String, Object>();

    public int getCode() {
        return code;
    }
    public void setCode(int code) {
        this.code = code;
    }
    public String getMsg() {
        return msg;
    }
    public void setMsg(String msg) {
        this.msg = msg;
    }
    public Map<String, Object> getMap() {
        return map;
    }
    public void setMap(Map<String, Object> map) {
        this.map = map;
    }

    //100的返回
    public static Msg success(){
        Msg result = new Msg();
        result.setCode(100);
        result.setMsg("处理成功");
        return result;
    }
    public static Msg fail(){
        Msg result = new Msg();
        result.setCode(200);
        result.setMsg("处理失败");
        return result;
    }

    public Msg add(String key,Object value){
        this.getMap().put(key, value);
        return this;
    }
}
