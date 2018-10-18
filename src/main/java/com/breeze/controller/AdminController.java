package com.breeze.controller;

import com.breeze.common.Msg;
import com.breeze.model.NewsModel;
import com.breeze.model.UserModel;
import com.breeze.service.NewsService;
import com.breeze.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/***
 *
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

    @Resource
    UserService userService;
    @Resource
    NewsService newsService;

    /**
     * 跳转到添加用户页面
     * @return
     */
    public String toAddUser(){
        return "addUser";
    }

    /**
     * 添加用户并重定向
     * @param model
     * @param user
     * @return
     */
    @RequestMapping("addUser")
    public String addUser(Model model, UserModel user){
        if(user != null){
            userService.saveUser(user);
        }
        return "redirect:/admin/userInfo";
    }

    /**
     * 修改用户
     * @param model
     * @param user
     * @return
     */
    @RequestMapping("updateUser")
    public String UpdateUser(Model model,UserModel user){
        if(userService.updateUser(user)){
            user = userService.findUserById(user.getId());
            model.addAttribute("user", user);
            return "redirect:/admin/userInfo";
        }
        return "/error";
    }

    /**
     * 查询单个用户
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/getUser")
    public String getUser(Long id,Model model){
        model.addAttribute("user", userService.findUserById(id));
        return "editUser";
    }
    /**
     * 根据id删除用户
     * @param id
     */
    @RequestMapping("/delUser")
    public String deleteUser(Long id,Model model){
        model.addAttribute("user", userService.deleteUser(id));
        return "redirect:/admin/userInfo";
    }

    /**
     * 查询所有用户
     * @param model
     * @return
     */
    @RequestMapping("getAllUser")
    public String getAllUser(Model model){
        List<UserModel> user = userService.selectList();
        model.addAttribute("userList",user);
        return "allUser";
    }

    /**
     * 分页查询用户信息
     * @param pn 默认从第一页开始  请求参数
     * @param model
     * @return
     */
    @RequestMapping("toAdminMain")
    public String getUsers(@RequestParam(value="pn",defaultValue="1")Integer pn, Model model){
//        //从第一条开始 每页查询五条数据
//        PageHelper.startPage(pn, 5);
//        List<UserModel> users = userService.selectList();
//        //将用户信息放入PageInfo对象里
//        PageInfo page = new PageInfo(users,5);
//        model.addAttribute("pageInfo", page);
        return "admin/adminMain";
    }

    //跳转到导航页面
    @RequestMapping("toNavPage")
    public String includeNavPage(){
        return "admin/adminNav";
    }

    //管理端显示新闻列表页面
    @RequestMapping("toNewsListPage")
    public String includeNewsListPage(){
        return "admin/adminTable";
    }

    //管理端显示新闻编辑页面
    @RequestMapping("toNewsEditPage")
    public String includeNewsEditPage(){
        return "admin/adminForm";
    }

    //管理端 查询所有新闻列表
    @RequestMapping(value="newsList",method = RequestMethod.POST,produces = "text/plain;charset=utf-8")
    @ResponseBody
    public String selectNewsList(@RequestParam(value="pn",defaultValue="1")Integer pn,@RequestParam(value="timeInterval",defaultValue = "0") Integer timeInterval){
        PageHelper.startPage(pn, 5);
        List<NewsModel> newsModelList=newsService.selectNewsList(timeInterval);
        PageInfo page = new PageInfo(newsModelList,5);
        String str=new Gson().toJson(Msg.success().add("pageInfo", page));
        return str;
    }

//    //管理端 根据时间区间查询新闻列表
//    @RequestMapping(value="newsListByDate",method = RequestMethod.POST,produces = "text/plain;charset=utf-8")
//    @ResponseBody
//    public String selectNewsListByDate(@RequestParam(value="pn",defaultValue="1")Integer pn
//                                        ,@RequestParam(value="timeInterval") Integer timeInterval){
//        PageHelper.startPage(pn, 5);
//        List<NewsModel> newsModelList=newsService.selectNewsListByDate(timeInterval);
//        PageInfo page = new PageInfo(newsModelList,5);
//        String str=new Gson().toJson(Msg.success().add("pageInfo", page));
//        return str;
//    }


}
