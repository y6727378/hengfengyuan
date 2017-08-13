/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.registposi.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.registposi.entity.CmsRegisterposition;
import com.thinkgem.jeesite.modules.registposi.dao.CmsRegisterpositionDao;

/**
 * 预定展位Service
 * @author zero
 * @version 2017-08-02
 */
@Service
@Transactional(readOnly = true)
public class CmsRegisterpositionService extends CrudService<CmsRegisterpositionDao, CmsRegisterposition> {

	public CmsRegisterposition get(String id) {
		return super.get(id);
	}
	
	public List<CmsRegisterposition> findList(CmsRegisterposition cmsRegisterposition) {
		return super.findList(cmsRegisterposition);
	}
	
	public Page<CmsRegisterposition> findPage(Page<CmsRegisterposition> page, CmsRegisterposition cmsRegisterposition) {
		return super.findPage(page, cmsRegisterposition);
	}
	
	@Transactional(readOnly = false)
	public void save(CmsRegisterposition cmsRegisterposition) {
		super.save(cmsRegisterposition);
	}
	
	@Transactional(readOnly = false)
	public void delete(CmsRegisterposition cmsRegisterposition) {
		super.delete(cmsRegisterposition);
	}
	
}