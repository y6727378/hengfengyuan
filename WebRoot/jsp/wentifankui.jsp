<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<%@ taglib prefix="sitemesh"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html>
<html>
<head>

<title>医合网-问题反馈</title>
<script src="../static/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="/hengfengyuan/static/layer/layer.js"></script>
<style type="text/css">
span {
	color: red;
	font-size: 14px;
}
</style>
</head>
<body>
	<script type="text/javascript">
		function commit() {
			$("#phoneSpan").html("");
			$("#fkcontentSpan").html("");
			var fkcontent = $("#fkcontent").val();
			if (fkcontent.length > 1000) {
				$("#fkcontentSpan").html("内容过长，重新录入");
				return;
			}
			if(fkcontent.length ==0){
				$("#fkcontentSpan").html("总是要说点什么的吧！请您填写要反馈的内容.");
				return;
			}
			var phone = $("#phone").val();
			if (phone.length > 50) {
				$("#phoneSpan").html("联系方式过长，请您输入正确的联系方式.");
				return;
			}
			if(phone.length <5){
				$("#phoneSpan").html("联系方式不正确！请您输入正确的联系方式.");
				return;
			}
			$.getJSON("${ctx}/fkcontent", {
				fkcontent : fkcontent,
				phone : phone,
			}, function(data) {
				alert("反馈成功");
			});
			var index = parent.layer.getFrameIndex(window.name);
			parent.layer.close(index);
		}
		$(document).ready(function() {
			$("#fkcontent").click(function() {
				$("#fkcontent").html("");
			});

			$("#phone").click(function() {
				$("#phone").val("");
			});

		});
	</script>

	<table>

		<tr>
			<td>反馈内容<span id="fkcontentSpan"></td>
		</tr>
		<tr>
			<td><textarea value="" name="fkcontent" id="fkcontent"
					style="width: 370px; height: 200px">你想说点什么，可以告诉我</textarea>
			</td>
		</tr>
		<tr>
			<td>联系方式<span id="phoneSpan"></td>
		</tr>
		<tr>
			<td><input value="请填写您的手机号，我们会很快联系您." type="text"
				id="phone" name="phone" style="width: 370px; height: 30px" /></span></td>
		</tr>
		<tr>
			<td style="position: relative; height: 40px;"><input
				type="button"
				style="width: 50px; height: 30px; line-height: 30px; margin-left: -25px; left: 50%; top: 50%; margin-top: -15px; background: #3385ff; color: #fff; border: none; position: absolute"
				value="提交" onclick="commit();" /></td>
		</tr>
	</table>

</body>
</html>