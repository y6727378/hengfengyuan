/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.fkcont.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.fkcont.entity.CmsFkcontent;
import com.thinkgem.jeesite.modules.fkcont.dao.CmsFkcontentDao;

/**
 * 反馈问题Service
 * @author zero
 * @version 2017-07-25
 */
@Service
@Transactional(readOnly = true)
public class CmsFkcontentService extends CrudService<CmsFkcontentDao, CmsFkcontent> {

	public CmsFkcontent get(String id) {
		return super.get(id);
	}
	
	public List<CmsFkcontent> findList(CmsFkcontent cmsFkcontent) {
		return super.findList(cmsFkcontent);
	}
	
	public Page<CmsFkcontent> findPage(Page<CmsFkcontent> page, CmsFkcontent cmsFkcontent) {
		return super.findPage(page, cmsFkcontent);
	}
	
	@Transactional(readOnly = false)
	public void save(CmsFkcontent cmsFkcontent) {
		super.save(cmsFkcontent);
	}
	
	@Transactional(readOnly = false)
	public void delete(CmsFkcontent cmsFkcontent) {
		super.delete(cmsFkcontent);
	}
	
}