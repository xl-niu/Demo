package com.zq.controller;

import com.zq.pojo.PageData;
import com.zq.service.oracle.TestService;
import com.zq.service.sqlser.IndexService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@Controller
public class IndexController {

    @Resource(name = "MyServiceImpl")
    IndexService MyServiceImpl;
    @Resource(name = "TestServiceImpl")
    TestService testServiceImpl;

    @RequestMapping("indexController")
    public ModelAndView  index() {
        PageData pageData=new PageData();
        List<PageData> list=new ArrayList<>();
        List<PageData> list2=new ArrayList<>();

        ModelAndView mv=new ModelAndView();
        mv.setViewName("index");
        try {
            //list=MyServiceImpl.getMes(pageData);
            //list2=testServiceImpl.getMes(pageData);
            PageData data=new PageData();
            Random random=new Random();
            data.put("title","2");
            /*各工段的在制情况*/
            data.put("clgd",random.nextInt(600));
            data.put("czgd",random.nextInt(600));
            data.put("zzgd_l",random.nextInt(600));
            data.put("zzgd_z",random.nextInt(600));
            data.put("pqj_l",random.nextInt(600));
            data.put("pqj_z",random.nextInt(600));
            data.put("zdp",random.nextInt(600));
            data.put("xck_l",random.nextInt(600));
            data.put("xck_z",random.nextInt(600));
            data.put("ycl_l",random.nextInt(600));
            data.put("ycl_z",random.nextInt(600));
            data.put("bcp_l",random.nextInt(600));
            data.put("bcp_z",random.nextInt(600));
            data.put("cpk",random.nextInt(600));
            list.add(data);
            mv.addObject("data",data);
            mv.addObject("list",list2);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mv;
    }
}
