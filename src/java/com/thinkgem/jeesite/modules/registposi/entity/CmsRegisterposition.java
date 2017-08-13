/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.registposi.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 预定展位Entity
 * @author zero
 * @version 2017-08-02
 */
public class CmsRegisterposition extends DataEntity<CmsRegisterposition> {
	
	private static final long serialVersionUID = 1L;
	private String companyName;		// 公司名
	private String companyAddress;		// 公司地址
	private String contactName;		// 联系人姓名
	private String contactPhone;		// 联系人电话
	private String positionName;		// 预定展位名称
	
	public CmsRegisterposition() {
		super();
	}

	public CmsRegisterposition(String id){
		super(id);
	}

	@Length(min=0, max=255, message="公司名长度必须介于 0 和 255 之间")
	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	
	@Length(min=0, max=255, message="公司地址长度必须介于 0 和 255 之间")
	public String getCompanyAddress() {
		return companyAddress;
	}

	public void setCompanyAddress(String companyAddress) {
		this.companyAddress = companyAddress;
	}
	
	@Length(min=0, max=64, message="联系人姓名长度必须介于 0 和 64 之间")
	public String getContactName() {
		return contactName;
	}

	public void setContactName(String contactName) {
		this.contactName = contactName;
	}
	
	@Length(min=0, max=64, message="联系人电话长度必须介于 0 和 64 之间")
	public String getContactPhone() {
		return contactPhone;
	}

	public void setContactPhone(String contactPhone) {
		this.contactPhone = contactPhone;
	}
	
	@Length(min=0, max=255, message="预定展位名称长度必须介于 0 和 255 之间")
	public String getPositionName() {
		return positionName;
	}

	public void setPositionName(String positionName) {
		this.positionName = positionName;
	}
	
}