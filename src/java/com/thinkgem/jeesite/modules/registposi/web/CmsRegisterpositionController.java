/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.registposi.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.registposi.entity.CmsRegisterposition;
import com.thinkgem.jeesite.modules.registposi.service.CmsRegisterpositionService;

/**
 * 预定展位Controller
 * @author zero
 * @version 2017-08-02
 */
@Controller
@RequestMapping(value = "${adminPath}/registposi/cmsRegisterposition")
public class CmsRegisterpositionController extends BaseController {

	@Autowired
	private CmsRegisterpositionService cmsRegisterpositionService;
	
	@ModelAttribute
	public CmsRegisterposition get(@RequestParam(required=false) String id) {
		CmsRegisterposition entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = cmsRegisterpositionService.get(id);
		}
		if (entity == null){
			entity = new CmsRegisterposition();
		}
		return entity;
	}
	
	@RequiresPermissions("registposi:cmsRegisterposition:view")
	@RequestMapping(value = {"list", ""})
	public String list(CmsRegisterposition cmsRegisterposition, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<CmsRegisterposition> page = cmsRegisterpositionService.findPage(new Page<CmsRegisterposition>(request, response), cmsRegisterposition); 
		model.addAttribute("page", page);
		return "modules/registposi/cmsRegisterpositionList";
	}

	@RequiresPermissions("registposi:cmsRegisterposition:view")
	@RequestMapping(value = "form")
	public String form(CmsRegisterposition cmsRegisterposition, Model model) {
		model.addAttribute("cmsRegisterposition", cmsRegisterposition);
		return "modules/registposi/cmsRegisterpositionForm";
	}

	@RequiresPermissions("registposi:cmsRegisterposition:edit")
	@RequestMapping(value = "save")
	public String save(CmsRegisterposition cmsRegisterposition, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, cmsRegisterposition)){
			return form(cmsRegisterposition, model);
		}
		cmsRegisterpositionService.save(cmsRegisterposition);
		addMessage(redirectAttributes, "保存预定展位成功");
		return "redirect:"+Global.getAdminPath()+"/registposi/cmsRegisterposition/?repage";
	}
	
	@RequiresPermissions("registposi:cmsRegisterposition:edit")
	@RequestMapping(value = "delete")
	public String delete(CmsRegisterposition cmsRegisterposition, RedirectAttributes redirectAttributes) {
		cmsRegisterpositionService.delete(cmsRegisterposition);
		addMessage(redirectAttributes, "删除预定展位成功");
		return "redirect:"+Global.getAdminPath()+"/registposi/cmsRegisterposition/?repage";
	}

}