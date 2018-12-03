package com.zq.service.sqlser;

import com.zq.pojo.PageData;

import java.util.List;

public interface IndexService {

    List<PageData> getMes(PageData pageData) throws Exception;
}
