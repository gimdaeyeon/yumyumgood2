<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>cookpang</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="icon"
	href="${pageContext.request.contextPath}/assets/img/main/cookpang.png"
	type="image/x-icon" />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Josefin+Slab:ital@1&display=swap"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff" />
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@400;700&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet" />
	
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/font-applesdgothicneo@1.0/all.min.css">
<script src="https://kit.fontawesome.com/9416f63361.js"
	crossorigin="anonymous"></script>

</head>
<body>
	<div id="body-main">
		<div id="main-header"></div>
		<div id="main-body">
			<div class="body-main-page">
				<div class="main-body-header">

					<div class="main-header-rank">
						<div class="tropy-img">
							<img
								src="${pageContext.request.contextPath}/assets/img/main/icons.gif"
								alt="" style="margin-top: 7px; width:50px ;height:41px;">
						</div>
						<c:forEach var="rank" begin="0" end="8" step="1" items="${rankTotal}" varStatus="status">
							<c:choose>
								<c:when test="${not empty rankTotal}">
									<div class="rank-round">
										<a href="${pageContext.request.contextPath}/post/postReadOk.po?postNumber=${rank.getPostNumber()}" class="rank-a">
											<div class="rank-img">
												<%-- https://cdn-bastani.stunning.kr/prod/users/3dbbdc56-858d-4d0e-b467-1463957476e3/avatar/ZQdoCULUEydS7bnM.image.jpg.small?q=60&t=crop&s=300x300 이미지에 넣는거--%>
												<img src="/upload/${rank.getPostThumbnail()}"
													alt="">

											</div>
										</a> 
										<span class="number">
										<c:out value = "${status.count}"/>
										</span>
									</div>

								</c:when>
							</c:choose>
						</c:forEach>
						<!-- <div class="rank-round">
							<div class="rank-img">
								<img
									src="https://2bob.co.kr/data/recipe/20210304174955-ZE7O3.jpg"
									alt="">
							</div>
							<span class="number">2</span>
						</div>

						<div class="rank-round">
							<div class="rank-img">
								<img
									src="https://2bob.co.kr/data/recipe/20210304154326-2QD8M.jpg"
									alt="">
							</div>
							<span class="number">3</span>
						</div>

						<div class="rank-round">
							<div class="rank-img">
								<img
									src="https://2bob.co.kr/data/recipe/20210218140828-NDJUY.jpg"
									alt="">
							</div>
							<span class="number">4</span>
						</div>

						<div class="rank-round">
							<div class="rank-img">
								<img
									src="https://2bob.co.kr/data/recipe/20210923170425-BIXZO.jpg"
									alt="">
							</div>
							<span class="number">5</span>
						</div>

						<div class="rank-round">
							<div class="rank-img">
								<img
									src="
                    https://2bob.co.kr/data/recipe/20210826165658-WNVO3.jpg"
									alt="">
							</div>
							<span class="number">6</span>
						</div>

						<div class="rank-round">
							<div class="rank-img">
								<img
									src="https://2bob.co.kr/data/recipe/20210923153812-924SC.jpg"
									alt="">
							</div>
							<span class="number">7</span>
						</div>

						<div class="rank-round">
							<div class="rank-img">
								<img
									src="https://2bob.co.kr/data/recipe/20210826151005-V9DSL.jpg"
									alt="">
							</div>
							<span class="number">8</span>
						</div> -->


					</div>

				</div>

				<!-- 카테고리 -->
				<%-- <c:forEach var="category" items="${categories}">
					<li><a href="category.jsp?id=${category.id}">${category.name}</a></li>
				</c:forEach> --%>

				<div class="main-body-bottom">
					<ul class="category-menu">
						<li class="category-box" data-id="1">
						<a class="recipe-category"
							href="${pageContext.request.contextPath}/mainOk.m?categoryNumber=1">
								<img
								src="${pageContext.request.contextPath}/assets/img/main/rice.png"
								alt="rice">
								<p class="category-name">밥요리</p>
						</a></li>
						<li class="category-box" data-id="2"><a class="recipe-category"
							href="${pageContext.request.contextPath}/mainOk.m?categoryNumber=2">
								<img
								src="${pageContext.request.contextPath}/assets/img/main/cooking.png"
								alt="cooking">
								<p class="category-name">국&탕</p>

						</a></li>
						<li class="category-box" data-id="3"><a class="recipe-category"
							href="${pageContext.request.contextPath}/mainOk.m?categoryNumber=3">
								<img
								src="${pageContext.request.contextPath}/assets/img/main/soup.png"
								alt="soup" style="margin-left: 13px;">
								<p class="category-name">찌개&전골</p>


						</a></li>
						<li class="category-box" data-id="5"><a class="recipe-category"
							href="${pageContext.request.contextPath}/mainOk.m?categoryNumber=5">
								<img
								src="${pageContext.request.contextPath}/assets/img/main/kimchi.png"
								alt="kimchi">
								<p class="category-name">밑반찬</p>

						</a></li>
						<li class="category-box" data-id="4"><a class="recipe-category"
							href="${pageContext.request.contextPath}/mainOk.m?categoryNumber=4">
								<img
								src="${pageContext.request.contextPath}/assets/img/main/stir.png"
								alt="stir">
								<p class="category-name">볶음요리</p>

						</a></li>
						<li class="category-box" data-id="15"><a class="recipe-category"
							href="${pageContext.request.contextPath}/mainOk.m?categoryNumber=15">
								<img
								src="${pageContext.request.contextPath}/assets/img/main/beefsteak.png"
								alt="beefsteak" style="margin-left: 22px;">
								<p class="category-name">구이(고기/생선)</p>

						</a></li>
						<li class="category-box" data-id="6"><a class="recipe-category"
							href="${pageContext.request.contextPath}/mainOk.m?categoryNumber=6">
								<img
								src="${pageContext.request.contextPath}/assets/img/main/dumplings.png"
								alt="dumplings" style="margin-left: 5px;">
								<p class="category-name">찜&조림</p>

						</a></li>
						<li class="category-box" data-id="11"><a class="recipe-category"
							href="${pageContext.request.contextPath}/mainOk.m?categoryNumber=11">
								<img
								src="${pageContext.request.contextPath}/assets/img/main/fried.png"
								alt="fried">
								<p class="category-name">튀김</p>

						</a></li>
						<br>
						<li class="category-box" data-id="8"><a class="recipe-category"
							href="${pageContext.request.contextPath}/mainOk.m?categoryNumber=8">
								<img alt="noodle" src="${pageContext.request.contextPath}/assets/img/main/noodles.png">
								<p class="category-name">국수</p>

						</a></li>
						<li class="category-box" data-id="10"><a class="recipe-category"
							href="${pageContext.request.contextPath}/mainOk.m?categoryNumber=10">	
								<img
								src="${pageContext.request.contextPath}/assets/img/main/sushi.png"
								alt="sushi" style="margin-left: 17px;">
								<p class="category-name">김밥&초밥</p>

						</a></li>
						<li class="category-box" data-id="7"><a class="recipe-category"
							href="${pageContext.request.contextPath}/mainOk.m?categoryNumber=7">
								<img
								src="${pageContext.request.contextPath}/assets/img/main/chicken.png"
								alt="chicken" style="margin-left: 17px;">
								<p class="category-name">야식&술안주</p>

						</a></li>
						<li class="category-box" data-id="12"><a class="recipe-category"
							href="${pageContext.request.contextPath}/mainOk.m?categoryNumber=12">
								<img alt="spaghetti" src="${pageContext.request.contextPath}/assets/img/main/spaghetti.png"
								style="margin-left: 8px;">
								<p class="category-name">스파게티</p>

						</a></li>
						<li class="category-box" data-id="13"><a class="recipe-category"
							href="${pageContext.request.contextPath}/mainOk.m?categoryNumber=13">
								<img alt="korean" src="${pageContext.request.contextPath}/assets/img/main/korean.png" style="margin-left: 13px;">
								<p class="category-name">간식&분식</p>

						</a></li>
						<li class="category-box" data-id="14"><a class="recipe-category"
							href="${pageContext.request.contextPath}/mainOk.m?categoryNumber=14">
								<img alt="coffee" src="${pageContext.request.contextPath}/assets/img/main/coffee-mug.png">
								<p class="category-name">디저트</p>

						</a></li>
						<li class="category-box" data-id="9"><a class="recipe-category"
							href="${pageContext.request.contextPath}/mainOk.m?categoryNumber=9">
								<img alt="salad" src="${pageContext.request.contextPath}/assets/img/main/salad.png">
								<p class="category-name">샐러드</p>

						</a></li>
						<li class="category-box" data-id="16"><a class="recipe-category"
							href="${pageContext.request.contextPath}/mainOk.m?categoryNumber=16">
								<img
								src="${pageContext.request.contextPath}/assets/img/main/sandwich.png"
								alt="sandwich" style="margin-left: 29px;">
								<p class="category-name">토스트&샌드위치</p>

						</a></li>

					</ul>
				</div>
				<!-- 카테고리 -->


				<c:choose>
					<c:when test="${not empty postList}">
						<!-- 빠른 for문 -->
						<!-- 아래 친구들을 div로 감싸고 복사해서 ajax로 사용 -->
						<div class="aaa">
							<c:forEach var="post" items="${postList}">


								<div class="bbb">

																								
								<%-- ${post.getFiles()} 이미지코드에 넣기--%>
<!-- 									<a href="#"> <img src="https://img.insight.co.kr/static/2023/02/24/700/img_20230224130814_f2w78110.webp" class="main-img" /> -->
									<a href="${pageContext.request.contextPath}/post/postReadOk.po?postNumber=${post.getPostNumber()}"> <img src="/upload/${post.getPostThumbnail()}" alt="${post.getPostThumbnail()}" class="main-img" />

									</a>
									<div class="text-box">
										<a href="${pageContext.request.contextPath}/user/youPage.us?userNumber=${post.getUserNumber()}" class="text-nick">${post.getUserNickName()}</a><br>
										<a href="${pageContext.request.contextPath}/post/postReadOk.po?postNumber=${post.getPostNumber()}" class="text-title">${post.getPostTitle()}</a>
									</div>
								</div>


							</c:forEach>
						</div>
					</c:when>
					<c:otherwise>
						<tr>
							<!-- 테이블에서 여러 칼럼을 합칠때 쓰는거 colspan -->
							<td colspan="3" align="center">.</td>
						</tr>
					</c:otherwise>
				</c:choose>




				<div class="paging">
					<p class="paging-btn">
						<c:if test="${prev}">
							<a
								href="${pageContext.request.contextPath}/mainOk.m?page=${startPage - 1}&categoryNumber=${categoryNumber}"
								class="paging-button">
								<img
								src="https://2bob.co.kr/skin/nodskin_argio/images/paging_prev.jpg"
								alt="" class="direction">
							</a>
						</c:if>
					</p>
					<p class="paging-num">
						
						<c:if test="${empty keyword}">
							<c:forEach var="q" begin="${startPage}" end="${endPage}">
							<c:choose>
								<c:when test="${!(q == page)}">
									<a
										href="${pageContext.request.contextPath}/mainOk.m?page=${q}&categoryNumber=${categoryNumber}">
										<c:out value="${q}" />
									</a>
								</c:when>
								<c:otherwise>
									<a href="#" class="btnColor"> <c:out value="${q}" />
									</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						</c:if>
						
						<c:if test="${not empty keyword}">
							<c:forEach var="q" begin="${startPage}" end="${endPage}">
							<c:choose>
								<c:when test="${!(q == page)}">
									<a
										href="${pageContext.request.contextPath}/mainSearch.m?page=${q}&keyword=${keyword}">
										<c:out value="${q}" />
									</a>
								</c:when>
								<c:otherwise>
									<a href="#" class="btnColor"> <c:out value="${q}" />
									</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						</c:if>

					</p>
					<p class="paging-btn">
						<c:if test="${next}">
							<a
								href="${pageContext.request.contextPath}/mainOk.m?page=${endPage + 1}&categoryNumber=${categoryNumber}">
								<img
								src="https://2bob.co.kr/skin/nodskin_argio/images/paging_next.jpg"
								alt="다음으로">
							</a>
						</c:if>
					</p>
					<!-- <p class="paging-btn" id="paging-last">
						<a href="#"> <img
							src="https://2bob.co.kr/skin/nodskin_argio/images/paging_d_next.jpg"
							alt="마지막으로">
						</a>
					</p> -->
				</div>



			</div>
			<!-- 여기서부터 -->
			<!-- 사이드 바 -->
			<div class="body-side-bar">
				<div class="sidebar-menu">
					<li class="sidebar-name"><a href="${pageContext.request.contextPath}/mainOk.m">
						<img alt="!" src="${pageContext.request.contextPath}/assets/img/main/logo3.png" class="logo-img">
					</a></li>

					<ul class="sidebar-ul">
						<li class="sidebar-li">
							<div class="li-box">
								<i class="fa-solid fa-house"></i> <a
									href="${pageContext.request.contextPath}/mainOk.m">홈</a>
							</div>
						</li>
						<li class="sidebar-li">
							<div class="li-box">
								<i class="fa-solid fa-magnifying-glass"></i> <a href="#"
									class="find2">검색</a>
								<!-- 검색 -->
							</div>
						</li>
						<li class="sidebar-li">
							<div class="li-box">
								<i class="fa-regular fa-heart"></i> <a href="#" class="alarmm">알림</a>
							</div>
						</li>
						<li class="sidebar-li">
							<div class="li-box">
								<i class="fa-regular fa-square-plus"></i> <a href="${pageContext.request.contextPath}/post/postWrite.po">만들기</a>
							</div>
						</li>
						<li class="sidebar-li">
							<div class="li-box">
								<i class="fa-regular fa-bookmark"></i> <a href="  ${pageContext.request.contextPath}/mypage/mypageOk.my ">찜한 레시피</a>
							</div>
						</li>
				<li class="sidebar-li">
							<div class="li-box">

								<i class="fa-regular fa-user"></i> 
						<c:choose>
							 	<c:when test="${empty sessionScope.userNumber}">
							 	<a href="${pageContext.request.contextPath}/user/login.us">프로필</a>
							</c:when> 
								<c:otherwise>
								<a href="${pageContext.request.contextPath}/mypage/mypageOk.my">프로필</a>
								</c:otherwise>
					</c:choose>

							</div>
						</li>
					</ul>


					<div class="btn-group">
						<li class="sidebar-login">
						<c:choose>
								<c:when test="${empty sessionScope.userNumber}">
									<a href="${pageContext.request.contextPath}/user/login.us">로그인</a>
						</c:when>
						<c:otherwise>
							<a href="${pageContext.request.contextPath}/user/logoutOk.us">로그아웃</a>
						</c:otherwise>
						</c:choose>
						</li>
					</div>

				</div>


				<%-- <c:choose>
						<c:when test="${not empty findUser}">
							<div class="recent-searches-box">
								<c:forEach var="user" items="${findUser}">
									<div class="search-man">
										<!-- 검색 결과를 출력하는 부분 -->
									</div>
								</c:forEach>
							</div>
						</c:when>
						<c:otherwise>
							<div class="recent-searches-box">
								<!-- 최근 검색 항목을 출력하는 부분 -->
							</div>
						</c:otherwise>
					</c:choose> --%>

				<!-- 검색 창 -->
				<div class="userList">
					<article class="sub-find">

						<div class="search-box">
							<div class="search-box2">
								<h1 class="qqq">검색</h1>
							</div>
							<div class="search-box3">
								<!-- 사이드바 드롭다운 추가 -->
								<select class="drop-down" id="drop-down" name="fruits">
									<option value="user" class="drop-down-option">회원</option>
									<option value="post" class="drop-down-option">게시물</option>
								</select> <input type="text" class="find-btn" id="find-btn" name="searchInput" placeholder="검색" />
								<button type="button" class="search-btn">검색</button>
								<!-- 사이드바 드롭다운 추가 -->
							</div>
						</div>
						<div class="recent-searches">
							<h3 class="recent-searches2">검색 항목</h3>
						</div>



						<div class="recent-searches-box">
<!-- ======================================== -->
							<%-- <div class="search-man">
								<div class="man-left">
									<!-- <a href="#"> -->
									<a href="#"> <img
										src="${user.getUserProfileImageSystemName }" alt="#"
										class="man-img" /> <!-- </a> -->
									</a>
								</div>
								<div class="man-right">
									<div class="man-id">
										<a href="#"> ${user.getUserNicname} </a>
										<!-- <a href="#" class="man-id2">hot_boy</a> -->
									</div>
									<div class="man-name">
										${user.getUserName}
										<!-- <a href="#" class="man-name2">이동재</a> -->
									</div>
								</div>
								<div class="delete-btn">
									<div class="delete-btn2">
										<!-- <button class="alarm-btn">삭제</button> -->
									</div>
								</div>
							</div> --%>
<!-- ======================================== -->

						</div>



					</article>
				</div>
				<!-- 검색 창 -->



				<!-- 알림 창 -->
				<article class="sub-find2">
					<div class="search-box2">
						<div class="alarm">
							<h1 class="qqq">알림</h1>
						</div>
					</div>
					<div class="alarm-box">
						<div class="new-alarm">
						준비중인 서비스 입니다.
							<!-- <div>
								<h4 class="alarm-date">이번주</h4>
							</div>
							<div class="boxboxbox">
								<div class="search-man">
									<div class="man-left2">
										<a href="#">
										<a href="#"> <img
											src="https://cdn.eyesmag.com/content/uploads/posts/2023/02/01/main-78a4be17-7f32-4801-b67a-90db5b811916.jpg"
											alt="#" class="man-img" />
										</a>
										</a>
									</div>
									<div class="alarm-right">
										<div class="alarm-id">
											<a href="#" class="alarm-font">hot_boy</a> 님이 회원님을 팔로우하기
											시작했습니다.
										</div>
									</div>
									<div class="delete-btn3">
										<div class="delete-btn2">
											<button class="alarm-btn">삭제</button>
										</div>
									</div>
								</div>

								<div class="search-man">
									<div class="man-left2">
										<a href="#">
										<a href="#"> <img
											src="https://cdn.eyesmag.com/content/uploads/posts/2023/02/01/main-78a4be17-7f32-4801-b67a-90db5b811916.jpg"
											alt="#" class="man-img" />
										</a>
										</a>
									</div>
									<div class="alarm-right">
										<div class="alarm-id">
											<a href="#" class="alarm-font">hot_boy</a> 님이 회원님을 팔로우하기
											시작했습니다.
										</div>
									</div>
									<div class="delete-btn3">
										<div class="delete-btn2">
											<button class="alarm-btn">삭제</button>
										</div>
									</div>
								</div>

								<div class="search-man">
									<div class="man-left2">
										<a href="#">
										<a href="#"> <img
											src="https://cdn.eyesmag.com/content/uploads/posts/2023/02/01/main-78a4be17-7f32-4801-b67a-90db5b811916.jpg"
											alt="#" class="man-img" />
										</a>
										</a>
									</div>
									<div class="alarm-right">
										<div class="alarm-id">
											<a href="#" class="alarm-font">hot_boy</a> 님이 회원님을 팔로우하기
											시작했습니다.
										</div>
									</div>
									<div class="delete-btn3">
										<div class="delete-btn2">
											<button class="alarm-btn">삭제</button>
										</div>
									</div>
								</div>

								<div class="search-man">
									<div class="man-left2">
										<a href="#">
										<a href="#"> <img
											src="https://cdn.eyesmag.com/content/uploads/posts/2023/02/01/main-78a4be17-7f32-4801-b67a-90db5b811916.jpg"
											alt="#" class="man-img" />
										</a>
										</a>
									</div>
									<div class="alarm-right">
										<div class="alarm-id">
											<a href="#" class="alarm-font">hot_boy</a> 님이 회원님을 팔로우하기
											시작했습니다.
										</div>
									</div>
									<div class="delete-btn3">
										<div class="delete-btn2">
											<button class="alarm-btn">삭제</button>
										</div>
									</div>
								</div>

								<div class="search-man">
									<div class="man-left2">
										<a href="#">
										<a href="#"> <img
											src="https://cdn.eyesmag.com/content/uploads/posts/2023/02/01/main-78a4be17-7f32-4801-b67a-90db5b811916.jpg"
											alt="#" class="man-img" />
										</a>
										</a>
									</div>
									<div class="alarm-right">
										<div class="alarm-id">
											<a href="#" class="alarm-font">hot_boy</a> 님이 회원님을 팔로우하기
											시작했습니다.
										</div>
									</div>
									<div class="delete-btn3">
										<div class="delete-btn2">
											<button class="alarm-btn">삭제</button>
										</div>
									</div>
								</div>
								<div>
									<h4 class="alarm-date2">이번달</h4>
								</div>
								<div class="new-alarm2">
									<div class="boxboxbox2">
										<div class="search-man">
											<div class="man-left2">
												<a href="#">
												<a href="#"> <img
													src="https://cdn.eyesmag.com/content/uploads/posts/2023/02/01/main-78a4be17-7f32-4801-b67a-90db5b811916.jpg"
													alt="#" class="man-img" />
												</a>
												</a>
											</div>
											<div class="alarm-right">
												<div class="alarm-id">
													<a href="#" class="alarm-font">hot_boy</a> 님이 회원님의 게시물에
													댓글을 달았습니다.
												</div>
											</div>
											<div class="delete-btn3">
												<div class="delete-btn2">
													<button class="alarm-btn">삭제</button>
												</div>
											</div>
										</div>

										<div class="search-man">
											<div class="man-left2">
												<a href="#">
												<a href="#"> <img
													src="https://cdn.eyesmag.com/content/uploads/posts/2023/02/01/main-78a4be17-7f32-4801-b67a-90db5b811916.jpg"
													alt="#" class="man-img" />
												</a>
												</a>
											</div>
											<div class="alarm-right">
												<div class="alarm-id">
													<a href="#" class="alarm-font">hot_boy</a> 님이 회원님의 게시물에
													댓글을 달았습니다.
												</div>
											</div>
											<div class="delete-btn3">
												<div class="delete-btn2">
													<button class="alarm-btn">삭제</button>
												</div>
											</div>
										</div>

										<div class="search-man">
											<div class="man-left2">
												<a href="#">
												<a href="#"> <img
													src="https://cdn.eyesmag.com/content/uploads/posts/2023/02/01/main-78a4be17-7f32-4801-b67a-90db5b811916.jpg"
													alt="#" class="man-img" />
												</a>
												</a>
											</div>
											<div class="alarm-right">
												<div class="alarm-id">
													<a href="#" class="alarm-font">hot_boy</a> 님이 회원님의 게시물에
													좋아요를 눌렀습니다.
												</div>
											</div>
											<div class="delete-btn3">
												<div class="delete-btn2">
													<button class="alarm-btn">삭제</button>
												</div>
											</div>
										</div>

										<div class="search-man">
											<div class="man-left2">
												<a href="#">
												<a href="#"> <img
													src="https://cdn.eyesmag.com/content/uploads/posts/2023/02/01/main-78a4be17-7f32-4801-b67a-90db5b811916.jpg"
													alt="#" class="man-img" />
												</a>
												</a>
											</div>
											<div class="alarm-right">
												<div class="alarm-id">
													<a href="#" class="alarm-font">hot_boy</a> 님이 회원님의 게시물에
													좋아요를 눌렀습니다.
												</div>
											</div>
											<div class="delete-btn3">
												<div class="delete-btn2">
													<button class="alarm-btn">삭제</button>
												</div>
											</div>
										</div>

										<div class="search-man">
											<div class="man-left2">
												<a href="#">
												<a href="#"> <img
													src="https://cdn.eyesmag.com/content/uploads/posts/2023/02/01/main-78a4be17-7f32-4801-b67a-90db5b811916.jpg"
													alt="#" class="man-img" />
												</a>
												</a>
											</div>
											<div class="alarm-right">
												<div class="alarm-id">
													<a href="#" class="alarm-font">hot_boy</a> 님이 회원님의 게시물에
													좋아요를 눌렀습니다.
												</div>
											</div>
											<div class="delete-btn3">
												<div class="delete-btn2">
													<button class="alarm-btn">삭제</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div> -->
						</div>
					</div>
				</article>
				<!-- 알림창 -->
			</div>
		</div>

		<div id="main-footer">
			<footer>
				<div>
					<div class="footer-content">
						<h3>Cook Pang</h3>
						<p>콘텐츠의 저작권은 제공처 또는 코리아IT아카데미 에 있으며, 이를 무단 이용하는 경우 저작권법 등에 따라
							법적책임을 질 수 있습니다.</p>
					</div>
					<div class="footer-bottom">
						<p>
							copyright © <a href="#">Cookpang</a>
						</p>
						<div class="footer-menu">
							<ul class="f-menu">
								<li><a href="">Home</a></li>
								<li><a href="">About</a></li>
								<li><a href="">Contact</a></li>
								<li><a href="">Blog</a></li>
							</ul>
						</div>
					</div>
				</div>
			</footer>
		</div>
		<!-- 여기까지 -->
	</div>
	<script src="https://code.jquery.com/jquery-3.6.3.js"
		integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
		crossorigin="anonymous"></script>
		
		 <script >
      
		let userNumber = "${sessionScope.userNumber}";
      </script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

</body>

</html>