package com.zq.service.sqlser.impl;

import com.zq.dao.DaoSupport;
import com.zq.dao.DataSourceEnum;
import com.zq.dao.DataSourceHolder;
import com.zq.pojo.PageData;
import com.zq.service.sqlser.FindService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class FindServiceImpl implements FindService {

    @Resource(name = "daoSupport")
    private DaoSupport daoSupport;

    @Override
    public List<PageData> getCo(PageData pageData) throws Exception{
        DataSourceHolder.setDataSources(DataSourceEnum.DS1.getKey());
        return (List<PageData>) daoSupport.findForList("mcompany.show",pageData);
    }
}
