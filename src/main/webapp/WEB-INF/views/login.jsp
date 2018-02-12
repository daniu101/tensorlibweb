<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>TensorLib 实验室</title>

<!-- Bootstrap -->
<link
	href="${pageContext.request.contextPath}/vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link
	href="${pageContext.request.contextPath}/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link
	href="${pageContext.request.contextPath}/vendors/nprogress/nprogress.css"
	rel="stylesheet">
<!-- Animate.css -->
<link
	href="${pageContext.request.contextPath}/vendors/animate.css/animate.min.css"
	rel="stylesheet">

<!-- Custom Theme Style -->
<link href="${pageContext.request.contextPath}/build/css/custom.min.css"
	rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
</head>

<body class="login">
	<div>
		<a class="hiddenanchor" id="signup"></a> <a class="hiddenanchor"
			id="signin"></a>

		<div class="login_wrapper">
			<div class="animate form login_form">
				<section class="login_content">
				<form>
					<h1>登录</h1>
					<div>
						<input type="text" class="form-control" placeholder="邮箱账号"
							required="" />
					</div>
					<div>
						<input type="password" class="form-control" placeholder="密码"
							required="" />
					</div>
					<div>
						<a class="btn btn-default submit" href="index.html">登录</a>

					</div>

					<div class="clearfix"></div>

					<div class="separator">
						<p class="change_link">
							<a class="to_register" href="#">忘记密码</a> <a href="#signup"
								class="to_register"> 注册账号 </a>
						</p>

						<div class="clearfix"></div>
						<br />

						<div>

							<h1>
								<i class="fa fa-paw"></i> TensorLib 实验室
							</h1>
							<p>©2018 保留所有权利. TensorLib 实验室!</p>
						</div>
					</div>
				</form>
				</section>
			</div>

			<div id="register" class="animate form registration_form">
				<section class="login_content">
				<form id="accountForm">
					<h1>创建 TensorLib 账号</h1>
					<div>
						<input type="text" name="name" class="form-control"
							placeholder="您的姓名" required="" />
					</div>
					<div>
						<input type="email" name="email" class="form-control"
							placeholder="邮箱账号" required="" />
					</div>
					<div>
						<input type="password" name="password" class="form-control"
							placeholder="设置密码" required="" />
					</div>
					<div>
						<a href="javascript:void(0);" onclick="createAccount()"
							class="btn btn-default submit">创建</a>
					</div>

					<div class="clearfix"></div>

					<div class="separator">
						<p class="change_link">
							<a href="#signin" class="to_register"> 已有账号，请登录 </a>
						</p>

						<div class="clearfix"></div>
						<br />

						<div>
							<h1>
								<i class="fa fa-paw"></i> TensorLib 实验室
							</h1>
							<p>©2018 保留所有权利. TensorLib 实验室!</p>
						</div>
					</div>
				</form>
				</section>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" charset="utf-8">
	function createAccount() {

		var url = "add";

		var data = $("#accountForm").serialize();

		$.ajax({
			//几个参数需要注意一下
			type : "POST",//方法类型
			dataType : "json",//预期服务器返回的数据类型
			url : url,
			data : data,
			success : function(data) {
				if (data == 1) {
					alert("注册成功！");
				}

				href = "${pageContext.request.contextPath}/login/view"
				location.href = href;
			},
			error : function() {
				alert("注册失败！");
			}
		});
	}
</script>
</html>
