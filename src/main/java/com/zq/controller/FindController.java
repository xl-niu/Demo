package com.zq.controller;


import com.zq.pojo.PageData;
import com.zq.service.sqlser.FindService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Controller
public class FindController {

    @Resource(name = "findServiceImpl")
    FindService findServiceImpl;

    @RequestMapping(value="/getcom", produces = "text/html;charset=UTF-8")
    public ModelAndView  view(String com){
        ModelAndView mv=new ModelAndView();
        PageData pd=new PageData();
        if(com.equals(null))
        {
            mv.setViewName("find");
            return mv;
        }
        pd.put("name","%"+com.trim()+"%");
        List<PageData> pageData=new ArrayList<>();
        try {
            pageData=findServiceImpl.getCo(pd);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if(pageData.size()==0){
            mv.setViewName("find2");
            return mv;
        }else {
            PageData pageData1=pageData.get(0);
            String name=pageData1.getString("company").trim();
            String floor=pageData1.getString("floor").trim();
            String room=pageData1.getString("room").trim();
            String result="尊敬的"+name+",您的展位位于"+floor+"楼，"+room+"教室";
            mv.addObject("name",name);
            mv.addObject("floor",floor);
            mv.addObject("room",room);
            mv.setViewName("find1");
        }
        return mv;
    }
}
