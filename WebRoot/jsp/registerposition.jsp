<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<%@ taglib prefix="sitemesh"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html>
<html>
<head>

<title>医合网-预定展位</title>
<script src="../static/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="/hengfengyuan/static/layer/layer.js"></script>
<style type="text/css">
span {
	color: red;
	font-size: 14px;
}
.bass1{
width:400px;
height:30px;
}

</style>
</head>
<body>
	<script type="text/javascript">
		function checkCompanyName(){
			var flag= false;
			var val = $("#companyName").val();
			if(val==null || val==""){
				$("#companyNameSpan").html("公司名不能为空");
			}else{
				$("#companyNameSpan").html("");
				flag = true;
			}
			return flag;
		}
		function checkCompanyAddress(){
			var flag= false;
			var val = $("#companyAddress").val();
			if(val==null || val==""){
				$("#companyAddressSpan").html("地址不能为空");
			}else{
				$("#companyAddressSpan").html("");
				flag = true;
			}
			return flag;
		}
		function checkContactName(){
			var flag= false;
			var val = $("#contactName").val();
			if(val==null || val==""){
				$("#contactNameSpan").html("联系人不能为空");
			}else{
				$("#contactNameSpan").html("");
				flag = true;
			}
			return flag;
		}
		function checkContactPhone(){
			var flag= false;
			var val = $("#contactPhone").val();
			if(val==null || val==""){
				$("#contactPhoneSpan").html("请输入正确的联系方式");
			}else{
				$("#contactPhoneSpan").html("");
				flag = true;
			}
			return flag;
		}
		function commit() {
		var companyName = checkCompanyName();
		var companyAddress = checkCompanyAddress();	
		var contactName = checkContactName();	
		var contactPhone = checkContactPhone();	
		var obj = document.getElementsByName("positionName");
		var positionName = "";
		for(var i=0; i<obj.length; i++){
			if(obj[i].checked) positionName+=obj[i].value+','; //如果选中，将value添加到变量s中
		}
		if(positionName == null || positionName == ""){
			alert("请您至少预定一个展位")
			return;
		}
		
		
		
		if(companyName &&companyAddress&&contactName&&contactPhone){
		
			$.getJSON("${ctx}/registposition", {
				companyName : $("#companyName").val(),
				companyAddress : $("#companyAddress").val(),
				contactName : $("#contactName").val(),
				contactPhone : $("#contactPhone").val(),
				positionName:positionName,
			}, function(data) {
				alert('预定成功,稍后我们的工作人员会与您联系,请保持电话畅通.');
			});
			var index = parent.layer.getFrameIndex(window.name);
			parent.layer.close(index);
		}
			
		}
		
	</script>
	
	
	
	
		<h4 align="center" style="color: red;">请你如实提供下列信息,我们会尽快联系您</h4>
		<div style="float:right">
			<img src="/hengfengyuan/static/images/xiaoe.png" style="width:180px;height:140px;">
		</div>
	<table style="align: center">
		<tr>
			<td width="70px">公司名:</td>
			<td width="400px"><input type="text" class="bass1" name="companyName" id="companyName" value=""  onblur="checkCompanyName();"><span id="companyNameSpan"></span></td>
		</tr>
		<tr>
			<td>详细地址:</td>
			<td><input type="text" class="bass1" name="companyAddress" id="companyAddress" value=""  onblur="checkCompanyAddress();" ><span id="companyAddressSpan"></span></td>
		</tr>
		<tr>
			<td>联系人姓名:</td>
			<td><input type="text" class="bass1" name="contactName" id="contactName" value=""   onblur="checkContactName();"><span id="contactNameSpan"></span></td>
		</tr>
		<tr>
			<td>联系人电话:</td>
			<td><input type="text" class="bass1" name="contactPhone" id="contactPhone" value=""   onblur="checkContactPhone();"><span id="contactPhoneSpan"></span></td>
		</tr>
		<tr>
			<td>预定展位:</td>
			<td><input type="checkbox" name="positionName" value="1" checked="checked">
					<font size="1px">2017第19届中国（青岛）国际医疗器械暨医院采购博览会    (2017.08.09—2017.08.11 )</font></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="checkbox" name="positionName" value="2"  >
						<font size="1px">中国康复及家庭医疗用品博览会     (2017.08.25—2017.08.26 )</font></td>
		</tr>
		
		<tr>
			<td style="position: relative; height: 40px;"><input
				type="button"
				style="width: 50px; height: 30px; line-height: 30px; margin-left: 260px; left: 50%; top: 50%; margin-top: -15px; background: #3385ff; color: #fff; border: none; position: absolute"
				value="提交" onclick="commit();" /></td>
		</tr>
		
		
		
	</table>

</body>
</html>