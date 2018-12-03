package com.zq.service.oracle.impl;

import com.zq.dao.DaoSupport;
import com.zq.dao.DataSourceEnum;
import com.zq.dao.DataSourceHolder;
import com.zq.pojo.PageData;
import com.zq.service.oracle.TestService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service(value = "TestServiceImpl")
public class TestServiceImpl implements TestService {

    @Resource(name = "daoSupport")
    DaoSupport daoSupport;

    @Override
    public List<PageData> getMes(PageData pageData) throws Exception{
        DataSourceHolder.setDataSources(DataSourceEnum.DS2.getKey());
        return (List<PageData>)daoSupport.findForList1("Ora.show");
    }
}
