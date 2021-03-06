<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- sử dụng taglibs của spring để bind-data từ end-point trả về. -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- tích hợp jstl vào jsp -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="description"
	content="ban laptop uy tin, chat luong, dich vu tot">
<meta name="keywords"
	content="laptop, asus, dell, hp, lenovo, acer, apple, msi, lg">
<meta name="author" content="CuongPham">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- CSS & JAVA_SCRIPT -->
<%@ include file="/WEB-INF/views/layout/includer.jsp"%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/manage.css">
<!-- ----------------- -->

<title>Laptop Project</title>
</head>

<body>

	<div id="fb-root"></div>
	<script async defer crossorigin="anonymous"
		src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v8.0"
		nonce="ChmFo6ST"></script>

	<!-- MAIN -->
	<div id="main">
		<div class="sidebar">
			<div class="sidebar-inner">
				<div class="sidebar-logo">
					<a class="sidebar-link" href="/"> <img class="icon"
						src="/img/logo.png">
						<h5 class="logo-text">Admin Manage</h5>
					</a>
				</div>

				<nav class="navbar scrollbar" id="style-1">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link" href="/admin/manage"><i
								class="fas fa-home"></i>Dashboard</a></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbardrop"
							data-toggle="dropdown"><i class="fas fa-list"></i>Tables</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="/admin/list-user">Account</a> <a
									class="dropdown-item" href="/admin/list-banner">Banner</a> <a
									class="dropdown-item" href="/admin/list-contact">Contact</a> <a
									class="dropdown-item" href="/admin/list-laptop">Laptop</a> <a
									class="dropdown-item" href="/admin/list-bill">Bill</a>
							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbardrop"
							data-toggle="dropdown"><i class="fas fa-pencil-alt"></i></i>Forms</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="/admin/add-laptop">Laptop</a> <a
									class="dropdown-item" href="/admin/add-banner">Banner</a>
							</div></li>
						<li class="nav-item"><a class="nav-link" href="#"><i
								class="fas fa-envelope"></i>Email</a></li>
						<li class="nav-item"><a class="nav-link" href="#"><i
								class="fas fa-map"></i>Maps</a></li>
						<li class="nav-item"><a class="nav-link" href="#"><i
								class="far fa-comment-dots"></i>Chat</a></li>
						<li class="nav-item"><a class="nav-link" href="#"><i
								class="far fa-calendar-alt"></i>Calendar</a></li>
						<li class="nav-item"><a class="nav-link" href="#"><i
								class="fas fa-chart-bar"></i>Charts</a></li>
						<li class="nav-item"><a class="nav-link" href="#"><i
								class="far fa-copy"></i>Pages</a></li>

					</ul>

				</nav>
			</div>
		</div>
		<div class="page-container">
			<div class="header-container">
				<nav class="navbar">
					<ul class="navbar-nav">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbardrop"
							data-toggle="dropdown"> <img class="icon"
								src="/files_users/${userDis.userAttachments.get(0).name }">
								<span class="text-icon">${userDis.username }</span>
						</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="/user-details"><i
									class="far fa-user"></i>Profile</a> <a class="dropdown-item"
									href="/logout"><i class="fas fa-power-off"></i>Logout</a>
							</div></li>
					</ul>
				</nav>
			</div>

			<div class="main-content">
				<div class="row">
					<div class="col-md-3">
						<div class="r3_counter_box">
							<img src="/img/icons8-money-100.png" alt="manage">
							<div class="stats">
								<h5>
									<strong> <c:choose>
											<c:when test="${totalMoney>99999999999 }">
												<fmt:formatNumber type="number" maxFractionDigits="3"
													value="${totalMoney/1000000000}" /> tỷ
											</c:when>
											<c:when test="${totalMoney<=99999999999 }">
												<fmt:formatNumber type="number" maxFractionDigits="3"
													value="${totalMoney}" />
											</c:when>

										</c:choose>
									</strong>
								</h5>
								<span>Total Revenue</span>
							</div>
						</div>
					</div>

					<div class="col-md-3">
						<div class="r3_counter_box">
							<img src="/img/icons8-user-male-100.png" alt="manage">
							<div class="stats">
								<h5>
									<strong><fmt:formatNumber type="number"
											maxFractionDigits="3" value="${totalUser }" /> </strong>
								</h5>
								<span>Total Users</span>
							</div>
						</div>
					</div>

					<div class="col-md-3">
						<div class="r3_counter_box">
							<img src="/img/icons8-laptop-100.png" alt="manage">
							<div class="stats">
								<h5>
									<strong> <fmt:formatNumber type="number"
											maxFractionDigits="3" value="${totalOrder }" />
									</strong>
								</h5>
								<span>Total Orders</span>
							</div>
						</div>
					</div>

					<div class="col-md-3">
						<div class="r3_counter_box">
							<img src="/img/icons8-cursor-100.png" alt="manage">
							<div class="stats">
								<h5>
									<strong> <fmt:formatNumber type="number"
											maxFractionDigits="3" value="${totalVisit}" />
									</strong>
								</h5>
								<span>Total Visits</span>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-7 chart">
						<div class="charts">
							<canvas id="myChart"></canvas>
							<div class="btn-report">
								<a href="javascript:void(0);" onclick="Report.reportView()"><i
									class="fas fa-chart-bar"></i> Thống kê</a>
							</div>
						</div>
					</div>
					<div class="col-md-5">
						<div class="table-product scrollbar1" id="style-1">
							<table class="table">
								<thead style="background-color: #03a9f4; color: white;">
									<tr>
										<th>Name</th>
										<th>Amount</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="listProductRP" items="${listProductRP }">
										<tr>
											<td>${listProductRP.nameProduct }</td>
											<td>${listProductRP.amount }</td>
										</tr>
									</c:forEach>

								</tbody>
							</table>
						</div>
					</div>
					<script>
     					var datas=[0, 0, 0, 0, 0, 0];
     					var labels=['January', 'February', 'March', 'April', 'May', 'June'];
     					
                    	const data = {
                        	labels: labels,
                        	datasets: [{
                            label: 'Thống kê tổng thu nhập theo tháng',
                            backgroundColor: '#03a9f4',
                            borderColor: '#72777a',
                            data: datas,
                        	}]
                   		};
     					const config = {
                            type: 'line',
                            data,
                            options: {}
                    	};
                      	var myChart = new Chart(
                            document.getElementById('myChart'),
                            config
                        );

                        function updateData(chart) {    
                            myChart.data.datasets[0].data.splice(0,6); 
                            myChart.data.labels.splice(0,6); 
                            
                           	for(let i=0;i<6;i++){
                            	myChart.data.datasets[0].data.push(datas[i]);
                            	myChart.data.labels.push(labels[i]);
                            }
                            chart.update();
                      	}
                    	var Report = {
                    		reportView: function() {
                        		
                        		$.ajax({
                        			url: "/rest/api/report/chart",
                        			type: "get",
                        			
                        			dataType: "json", // dữ liệu từ Rest trả về là json.
                        			success: function(jsonResult) { // được gọi khi web-service
                        				// trả
                        				// về dữ liệu.
                        				if (jsonResult.status == "333") {
                        					datas=jsonResult.data.data;
                        					labels=jsonResult.data.label;
                        					updateData(myChart);  

                        				}
                        			}
                        		});
                        	}
                          }

                    </script>
				</div>

				<div class="row">
					<div class="col-md-6">
						<iframe
							src="https://calendar.google.com/calendar/embed?src=computercuongpham999%40gmail.com&ctz=Asia%2FHo_Chi_Minh"
							width="100%" height="600px" frameborder="0" scrolling="no"></iframe>
					</div>
					<div class="col-md-6">
						<iframe
							src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.6810755795054!2d105.7879283149316!3d20.965318986032752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ad29b81cac63%3A0xe5796c9507084b90!2zMTlhIFBo4buRIFhhIExhLCBQLiBQaMO6YyBMYSwgSMOgIMSQw7RuZywgSMOgIE7hu5lpIDEyMTA4!5e0!3m2!1svi!2s!4v1622219895232!5m2!1svi!2s"
							width="100%" height="600px" style="border: 0;" allowfullscreen=""
							loading="lazy"></iframe>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 slide-view">
						<div id="demo" class="carousel slide" data-ride="carousel">

							<ul class="carousel-indicators">
								<li data-target="#demo" data-slide-to="0" class="active"></li>
								<li data-target="#demo" data-slide-to="1"></li>
							</ul>

							<div class="carousel-inner">
								<div class="carousel-item active">
									<div class="row">
										<div class="col-md-4">
											<img src="/img/slider1.jpg" alt="slide">
										</div>
										<div class="col-md-4">
											<img src="/img/slider2.jpg" alt="slide">
										</div>
										<div class="col-md-4">
											<img src="/img/slider3.jpg" alt="slide">
										</div>
									</div>

								</div>
								<div class="carousel-item">
									<div class="row">
										<div class="col-md-4">
											<img src="/img/slider4.jpg" alt="slide">
										</div>
										<div class="col-md-4">
											<img src="/img/slider5.jpg" alt="slide">
										</div>
										<div class="col-md-4">
											<img src="/img/slider6.jpg" alt="slide">
										</div>
									</div>
								</div>

							</div>

						</div>
					</div>
				</div>

			</div>
			<div class="footer">
				©
				<c:set var="now" value="<%=new java.util.Date()%>" />
				<fmt:formatDate pattern="yyyy" value="${now}" />
				Copyright: <a href="https://www.facebook.com/cuongphamptit999/">
					CuongPham.com</a>
			</div>

		</div>
	</div>

</body>

</html>