package com.zq.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
/**
 * @package: top.lushunde.controller
 * @Title: PageController
 * @Description: WEB-INF中的jsp跳转
 * @Company: 个人测试
 * @author MrLu
 * @date 2016-11-14 下午12:13:00
 */
@RequestMapping("page")
@Controller
public class PageController {


    /**
     * @Title: toPage
     * @Description: 二级页面跳转，例如 WEB-INF/user/login.jsp
     * @param: @param pageName1	 例如 user
     * @param: @param pageName2	例如 login
     * @param: @return
     * @return: ModelAndView   user/login
     * @throws
     */
    @RequestMapping(value = "{pageName1}/{pageName2}", method = RequestMethod.GET)
    public ModelAndView toPage(@PathVariable("pageName1") String pageName1,@PathVariable("pageName2") String pageName2) {
        ModelAndView mv = new ModelAndView(pageName1+"/"+pageName2);
        return mv;
    }


    /**
     * @Title: toPage
     * @Description: 一级页面跳转，例如 WEB-INF/logout.jsp
     * @param: @param pageName1	 例如 logout
     * @param: @return
     * @return: ModelAndView   login
     * @throws
     */
    @RequestMapping(value = "{pageName1}", method = RequestMethod.GET)
    public ModelAndView toPage(@PathVariable("pageName1") String pageName1) {
        ModelAndView mv = new ModelAndView(pageName1);
        return mv;
    }

}