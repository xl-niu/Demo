package com.zq.service.sqlser;


import com.zq.pojo.PageData;

import java.util.List;

public interface FindService {

   public List<PageData> getCo(PageData pageData) throws Exception;

}
