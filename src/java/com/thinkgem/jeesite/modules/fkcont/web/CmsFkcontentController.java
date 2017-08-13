/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.fkcont.web;

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
import com.thinkgem.jeesite.modules.fkcont.entity.CmsFkcontent;
import com.thinkgem.jeesite.modules.fkcont.service.CmsFkcontentService;

/**
 * 反馈问题Controller
 * @author zero
 * @version 2017-07-25
 */
@Controller
@RequestMapping(value = "${adminPath}/fkcont/cmsFkcontent")
public class CmsFkcontentController extends BaseController {

	@Autowired
	private CmsFkcontentService cmsFkcontentService;
	
	@ModelAttribute
	public CmsFkcontent get(@RequestParam(required=false) String id) {
		CmsFkcontent entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = cmsFkcontentService.get(id);
		}
		if (entity == null){
			entity = new CmsFkcontent();
		}
		return entity;
	}
	
	@RequiresPermissions("fkcont:cmsFkcontent:view")
	@RequestMapping(value = {"list", ""})
	public String list(CmsFkcontent cmsFkcontent, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<CmsFkcontent> page = cmsFkcontentService.findPage(new Page<CmsFkcontent>(request, response), cmsFkcontent); 
		model.addAttribute("page", page);
		return "modules/fkcont/cmsFkcontentList";
	}

	@RequiresPermissions("fkcont:cmsFkcontent:view")
	@RequestMapping(value = "form")
	public String form(CmsFkcontent cmsFkcontent, Model model) {
		model.addAttribute("cmsFkcontent", cmsFkcontent);
		return "modules/fkcont/cmsFkcontentForm";
	}

	@RequiresPermissions("fkcont:cmsFkcontent:edit")
	@RequestMapping(value = "save")
	public String save(CmsFkcontent cmsFkcontent, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, cmsFkcontent)){
			return form(cmsFkcontent, model);
		}
		cmsFkcontentService.save(cmsFkcontent);
		addMessage(redirectAttributes, "保存反馈问题成功");
		return "redirect:"+Global.getAdminPath()+"/fkcont/cmsFkcontent/?repage";
	}
	
	@RequiresPermissions("fkcont:cmsFkcontent:edit")
	@RequestMapping(value = "delete")
	public String delete(CmsFkcontent cmsFkcontent, RedirectAttributes redirectAttributes) {
		cmsFkcontentService.delete(cmsFkcontent);
		addMessage(redirectAttributes, "删除反馈问题成功");
		return "redirect:"+Global.getAdminPath()+"/fkcont/cmsFkcontent/?repage";
	}

}