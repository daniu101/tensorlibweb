<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>庆余资本首页</title>
<meta name="viewport"
	content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, width=device-width">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-touch-fullscreen" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<meta name="format-detection" content="address=no">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/mui.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/iscroll.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.flexslider-min.js"></script>
<script src="${pageContext.request.contextPath}/js/hmt.js" type="text/javascript"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/index.js"></script>
<script src="${pageContext.request.contextPath}/js/swiper.min.js" type="text/javascript"></script>
</head>

<body>
	<header class="hasManyCity" id="header">
	<div id="" class="cityBtn">庆余资本</div>
	<div id="" class="searchBox">
		<a href="search.html"> <i class="icon-search"></i> <span>搜索产品</span>
		</a>
	</div>
	<div id="" onclick="location='${pageContext.request.contextPath}/sysInfo/view'" class="qrcodeBtn"></div>
	</header>
	<div id="container">
		<div id="main">
			<div id="scroller">
				<section class="banner">
				<div class="swiper-container swiper-container1">
					<div class="swiper-wrapper bannerwidth">
						<div class="swiper-slide swiper-slide-duplicate">
							<a href="#"> <img src="${pageContext.request.contextPath}/img/banner1.png">
							</a>
						</div>
						<div class="swiper-slide">
							<a href="#"> <img src="${pageContext.request.contextPath}/img/banner2.png">
							</a>
						</div>
						<div class="swiper-slide swiper-slide-duplicate">
							<a href="#"> <img src="${pageContext.request.contextPath}/img/banner3.png">
							</a>
						</div>
					</div>
					<div class="swiper-pagination swiper-pagination1"></div>
				</div>
				</section>

				<section class="slider">
				<div class="swiper-container swiper-container2">
					<div class="swiper-wrapper tuangouwidth">
						<div class="swiper-slide swiper-slide-duplicate">
							<ul class="icon-list">
								<li class="icon"><a href="${pageContext.request.contextPath}/product/product/type/0"> <span
										class="icon-circle"> <img src="${pageContext.request.contextPath}/img/a1.png">
									</span> <span class="icon-desc">集合信托</span>
								</a></li>
								<li class="icon"><a href="${pageContext.request.contextPath}/product/product/type/1"> <span
										class="icon-circle"> <img src="${pageContext.request.contextPath}/img/a2.png">
									</span> <span class="icon-desc">集合资管</span>
								</a></li>
								<li class="icon"><a href="${pageContext.request.contextPath}/product/product/type/2"> <span
										class="icon-circle"> <img src="${pageContext.request.contextPath}/img/a3.png">
									</span> <span class="icon-desc">债权基金</span>
								</a></li>
								<li class="icon"><a href="${pageContext.request.contextPath}/product/product/type/3"> <span
										class="icon-circle"> <img src="${pageContext.request.contextPath}/img/a4.png">
									</span> <span class="icon-desc">证券基金</span>
								</a></li>
								<li class="icon"><a href="${pageContext.request.contextPath}/product/product/type/4"> <span
										class="icon-circle"> <img src="${pageContext.request.contextPath}/img/a5.png">
									</span> <span class="icon-desc">股权基金</span>
								</a></li>
								<li class="icon"><a href="${pageContext.request.contextPath}/product/product/type/5"> <span
										class="icon-circle"> <img src="${pageContext.request.contextPath}/img/a6.png">
									</span> <span class="icon-desc">创新基金</span>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
				</section>
			</div>

			<div id="index" class="page-center-box">
				<div>
					<!--专享推荐-->
					<div class="sy_title mb10">
						<span class="left">热销产品</span> <a href="#" class="fr morethree">更多&gt;&gt;</a>
					</div>
					<div class="sy_recmd">
						<div class="sy_recmd_list_box">

							<!--热销产品 开始-->
							<div class=" rush-box">
								<div>
									<div id="index">
										<!--产品条目 开始 -->
										<c:forEach var="product" items="${productList}">
											<div class="limit_buy mb10">
												<ul class="list_box">

													<li><a href="${pageContext.request.contextPath}/product/details/${product.id}">
															<div class="fl">
																<p class="bt overflow_clear"><c:out value="${product.issuer}" />-<c:out value="${product.tittle}" />-<c:out value="${product.tag1}" />-<c:out value="${product.tag2}" />-<c:out value="${product.tag3}" /></p>
																认购起点：<c:out value="${product.substart}" />万&nbsp; &nbsp; 
																投资期限：<c:out value="${product.investterm}" />个月<br />
																前端基金：<c:out value="${product.fundfront}" />万&nbsp; &nbsp; 
																后端基金:<c:out value="${product.fundblack}" />万，
																<p>投资进程：<c:out value="${product.process}" />%</p>
																<p>收藏：<c:out value="${product.collection}" />， &nbsp; 查看：<c:out value="${product.see}" /></p>
															</div>
													</a></li>
												</ul>
											</div>
										</c:forEach>
										<!--产品条目 结束 -->
									</div>
								</div>
							</div>
							<!--热销产品 结束-->

							<div class="clear"></div>
						</div>
					</div>
					<!--专享推荐end-->
				</div>
			</div>
		</div>
	</div>
	<footer id="footer">
	<div>
		<a href="${pageContext.request.contextPath}/product/index">
			<div class="icon i-1 on"></div>
			<p>首页</p>
		</a>
	</div>
	<div>
		<a href="${pageContext.request.contextPath}/product/product/0/0">
			<div class="icon i-2"></div>
			<p>产品中心</p>
		</a>
	</div>
	<div>
		<a href="${pageContext.request.contextPath}/user/view">
			<div class="icon i-4"></div>
			<p>我的</p>
		</a>
	</div>
	</footer>
</body>
<script src="${pageContext.request.contextPath}/js/other.js" type="text/javascript" charset="utf-8"></script>
</html>