/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.registposi.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.registposi.entity.CmsRegisterposition;

/**
 * 预定展位DAO接口
 * @author zero
 * @version 2017-08-02
 */
@MyBatisDao
public interface CmsRegisterpositionDao extends CrudDao<CmsRegisterposition> {
	
}