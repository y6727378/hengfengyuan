/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.fkcont.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.fkcont.entity.CmsFkcontent;

/**
 * 反馈问题DAO接口
 * @author zero
 * @version 2017-07-25
 */
@MyBatisDao
public interface CmsFkcontentDao extends CrudDao<CmsFkcontent> {
	
}