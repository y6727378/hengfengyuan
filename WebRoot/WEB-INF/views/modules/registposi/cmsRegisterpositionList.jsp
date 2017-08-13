<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>预定展位管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			
		});
		function page(n,s){
			$("#pageNo").val(n);
			$("#pageSize").val(s);
			$("#searchForm").submit();
        	return false;
        }
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/registposi/cmsRegisterposition/">预定展位列表</a></li>
		<shiro:hasPermission name="registposi:cmsRegisterposition:edit"><li><a href="${ctx}/registposi/cmsRegisterposition/form">预定展位添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="cmsRegisterposition" action="${ctx}/registposi/cmsRegisterposition/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>公司名：</label>
				<form:input path="companyName" htmlEscape="false" maxlength="255" class="input-medium"/>
			</li>
			<li><label>联系人姓名：</label>
				<form:input path="contactName" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>预定展位名称：</label>
				<form:input path="positionName" htmlEscape="false" maxlength="255" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>公司名</th>
				<th>公司地址</th>
				<th>联系人姓名</th>
				<th>联系人电话</th>
				<th>预定展位名称</th>
				<th>更新时间</th>
				<th>备注信息</th>
				<shiro:hasPermission name="registposi:cmsRegisterposition:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="cmsRegisterposition">
			<tr>
				<td><a href="${ctx}/registposi/cmsRegisterposition/form?id=${cmsRegisterposition.id}">
					${cmsRegisterposition.companyName}
				</a></td>
				<td>
					${cmsRegisterposition.companyAddress}
				</td>
				<td>
					${cmsRegisterposition.contactName}
				</td>
				<td>
					${cmsRegisterposition.contactPhone}
				</td>
				<td>
					${cmsRegisterposition.positionName}
				</td>
				<td>
					<fmt:formatDate value="${cmsRegisterposition.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${cmsRegisterposition.remarks}
				</td>
				<shiro:hasPermission name="registposi:cmsRegisterposition:edit"><td>
    				<a href="${ctx}/registposi/cmsRegisterposition/form?id=${cmsRegisterposition.id}">修改</a>
					<a href="${ctx}/registposi/cmsRegisterposition/delete?id=${cmsRegisterposition.id}" onclick="return confirmx('确认要删除该预定展位吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>