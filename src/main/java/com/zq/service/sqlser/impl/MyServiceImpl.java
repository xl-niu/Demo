package com.zq.service.sqlser.impl;

import com.zq.dao.DaoSupport;
import com.zq.dao.DataSourceEnum;
import com.zq.dao.DataSourceHolder;
import com.zq.pojo.PageData;
import com.zq.service.sqlser.IndexService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("MyServiceImpl")
public class MyServiceImpl implements IndexService {

    @Resource(name = "daoSupport")
    DaoSupport daoSupport;

    @Override
    public List<PageData> getMes(PageData pageData) throws Exception{
        DataSourceHolder.setDataSources(DataSourceEnum.DS1.getKey());
        return (List<PageData>)daoSupport.findForList1("MUser.show");
    }
}
