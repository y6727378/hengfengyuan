/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.fkcont.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 反馈问题Entity
 * @author zero
 * @version 2017-07-25
 */
public class CmsFkcontent extends DataEntity<CmsFkcontent> {
	
	private static final long serialVersionUID = 1L;
	private String phone;		// 联系方式
	private String content;		// 反馈内容
	
	public CmsFkcontent() {
		super();
	}

	public CmsFkcontent(String id){
		super(id);
	}

	@Length(min=0, max=50, message="联系方式长度必须介于 0 和 50 之间")
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	@Length(min=0, max=1000, message="反馈内容长度必须介于 0 和 1000 之间")
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
}