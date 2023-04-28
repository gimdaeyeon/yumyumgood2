<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>youPage</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/youPage.css" />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Josefin+Slab:ital@1&display=swap"
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
				<div class="main-page-tbb">
					<div class="main-top">
						<div class="profile-picture">
							<c:choose>
								<c:when test="${empty userInfo.getUserProfileImageSystemName()}">
									<div id="img-box">
										<img
											src="https://www.thechooeok.com/common/img/default_profile.png"
											class="profile-img" />
									</div>
								</c:when>
								<c:otherwise>
								<div class="img-box">
									<img alt=""
										src="/upload/${userInfo.getUserProfileImageSystemName()}"
										class="profile-img">
									<!--    <a href="${profileImage.getUserProfileImageSystemName()}" alt="profile-img" class="profile-img">이미지</a> -->
								</div>
								</c:otherwise>
							</c:choose>
							<div class="aaa">
								<div class="name-box">
									<div class="nickname-box">
										<div class="nickname">${userVO.getUserNickname()}</div>
										<input type="hidden" name="yourNumber" class="yourNumber"
											value="${userVO.getUserNumber()}">
									</div>
									<div class="profile-btn">
										<button type="button" class="profile-btn2">
											
											<c:choose>
												<c:when test="${followStatus}">
													<i class="followBtnOn">팔로잉됐다!</i>
												</c:when>
												<c:otherwise>
													<i class="followBtnOff">팔로우</i>
												</c:otherwise>
											</c:choose>
											<!-- -------------------------------------------------------------------- -->
										</button>
									</div>
									<!-- <div class="point">
                      <img src="" alt="" />
                    </div> -->
								</div>
								<div class="follow-box">
									<div class="post-cnt">
										<div class="post">
											게시물
											<!-- 디비처리 숫자가 늘어나용>< -->
											<span class="cnt"> ${userVO.getPostCount()}</span>
										</div>
									</div>
									<!-- 팔로워 모달창 시작-->
									<div class="follower-cnt">
										<!-- 모달 열기 버튼 -->
										<a class="follower" onclick="openModal()">팔로워 <!-- 디비처리 숫자가 늘어나용>< -->
											<span class="followCnt">${userVO.getFollowersCount()}</span>
										</a>
									</div>

									<!-- 모달 창 -->
									<div id="myModal" class="modal">
										<div class="modal-content">
											<div class="modal-header">
												<div class="follower-name">
													<div class="follower-name2">팔로워</div>
												</div>
												<div class="close">&times;</div>
											</div>
											<div class="main">
												<div class="main-page-box">
													<div class="main-page">
														<div class="follower-box1">
															<!-- 팔로워 프로필 사진 -->
															<div class="follower-img">
																<img
																	src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR04JlroqrWnZpJunUNp4esFmT_qjuYd9WKoh0Lvj0&s"
																	alt="#" class="follower-img2" />
															</div>
															<!-- 팔로워 이름, 아이디 -->
															<div class="follower-nickname">
																<div class="follower-nickname-box">
																	<a href="#">hunbar_nom12</a>
																</div>
																<div class="follower-realname-box">훈이</div>
															</div>
															<!-- 팔로워 취소 버튼 -->
															<div class="follower-cancel">
									
															</div>
														</div>
								
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- 팔로워 모달창 끝 -->

									<!-- 팔로잉 모달창 시작 -->
									<div class="following-cnt">
										<a class="following" onclick="openModal2()">팔로잉 <!-- 디비처리 숫자가 늘어나용>< -->
											<span class="followingCnt">${userVO.getFollowingCount()}</span>
										</a>
									</div>

									<!-- 모달 창 -->
									<div id="myModal2" class="modal2">
										<div class="modal-content2">
											<div class="modal-header2">
												<div class="following-name">
													<div class="follower-name2">팔로잉</div>
												</div>
												<div class="close2">&times;</div>
											</div>
											<div class="main-following">
												<div class="main-page-box2">
													<div class="main-page2">
														<div class="following-box1">
															<!-- 팔로워 프로필 사진 -->
															<div class="following-img">
																<img
																	src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR04JlroqrWnZpJunUNp4esFmT_qjuYd9WKoh0Lvj0&s"
																	alt="#" class="following-img2" />
															</div>
															<!-- 팔로워 이름, 아이디 -->
															<div class="following-nickname">
																<div class="following-nickname-box">
																	<a href="#">hunbar_nom12</a>
																</div>
																<div class="following-realname-box">훈이</div>
															</div>
															<!-- 팔로워 취소 버튼 -->
															<div class="following-cancel">
																<!-- <button
                                    type="button"
                                    value="#"
                                    class="cancel-button2"
                                  >
                                    취소
                                  </button> -->
															</div>
														</div>
														<div class="following-box2">
															<!-- 팔로워 프로필 사진 -->
															<div class="following-img">
																<img
																	src="http://cso-studio-kr.dn.nexoncdn.co.kr/images/01511608942513017001.vmg"
																	alt="#" class="following-img2" />
															</div>
															<!-- 팔로워 이름, 아이디 -->
															<div class="following-nickname">
																<div class="following-nickname-box">
																	<a href="#">fuck_yury11</a>
																</div>
																<div class="following-realname-box">유리</div>
															</div>
															<!-- 팔로워 취소 버튼 -->
															<div class="following-cancel">
																<!-- <button
                                    type="button"
                                    value="#"
                                    class="cancel-button2"
                                  >
                                    취소
                                  </button> -->
															</div>
														</div>
														<div class="following-box3">
															<!-- 팔로워 프로필 사진 -->
															<div class="following-img">
																<img
																	src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyOhdZOIR5m6Pd-V9eKT3yCP7Oqa-LCqpbvA&usqp=CAU"
																	alt="#" class="following-img2" />
															</div>
															<!-- 팔로워 이름, 아이디 -->
															<div class="following-nickname">
																<div class="following-nickname-box">
																	<a href="#">stone_gu12</a>
																</div>
																<div class="following-realname-box">맹구</div>
															</div>
															<!-- 팔로워 취소 버튼 -->
															<div class="following-cancel">
																<!-- <button
                                    type="button"
                                    value="#"
                                    class="cancel-button2"
                                  >
                                    취소
                                  </button> -->
															</div>
														</div>
														<div class="following-box4">
															<!-- 팔로워 프로필 사진 -->
															<div class="following-img">
																<img
																	src="https://d2u3dcdbebyaiu.cloudfront.net/uploads/atch_img/702/55fffa22a1c20fd069f937c27d6a764e_res.jpeg"
																	alt="#" class="following-img2" />
															</div>
															<!-- 팔로워 이름, 아이디 -->
															<div class="following-nickname">
																<div class="following-nickname-box">
																	<a href="#">stainless_water13</a>
																</div>
																<div class="following-realname-box">철수</div>
															</div>
															<!-- 팔로워 취소 버튼 -->
															<div class="following-cancel">
																<!-- <button
                                    type="button"
                                    value="#"
                                    class="cancel-button2"
                                  >
                                    취소
                                  </button> -->
															</div>
														</div>
														<!-- 팔로워와 같은 이유 -->
														<!-- <div class="following-box5"></div>
                              <div class="following-box6"></div>
                              <div class="following-box7"></div>
                              <div class="following-box1"></div>
                              <div class="following-box2"></div>
                              <div class="following-box3"></div>
                              <div class="following-box4"></div> -->
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- 팔로잉 모달창 끝 -->
								</div>
								<div class="real-name">
									<div class="name">${userVO.getUserName()}</div>
								</div>
								<div class="introduce">
									<!-- db에서 조회해야한다. -->
									<div class="introduce-txt">
										${userVO.getUserSelfIntroduction()}</div>
								</div>
							</div>
						</div>
					</div>

					<div class="main-banner">
						<div class="banner-box">
							<div class="banner1">
								<!-- <a href="#" class="post-thumbnail">게시물</a> -->
								<div class="post-thumbnail">게시물</div>
							</div>
							<!-- <div class="banner2">
                  <a href="#" class="post-thumbnail2">친구</a>
                </div>
                <div class="banner3">
                  <a href="#" class="post-thumbnail3">저장</a>
                </div> -->
						</div>
					</div>

					<div class="main-bottom">
					<!-- 	<div class="ccc">
							<div class="bbb">
								<a href="#" class="go-post"> <img
									src="https://media.licdn.com/dms/image/C4E03AQGzq62SgXXOmg/profile-displayphoto-shrink_800_800/0/1602751018851?e=2147483647&v=beta&t=XWJ0J8Di9xMxz6pdlZhb_GP_zEp4HDMWVwZcgYQY2Jg"
									class="thumbnail-img" />
								</a>
							</div>
							<div class="bbb">
								<a href="#" class="go-post"> <img
									src="https://newsimg-hams.hankookilbo.com/2022/10/19/64ff9dd1-43eb-4bb7-9fb7-ece0a2f793fc.jpg"
									class="thumbnail-img" />
								</a>
							</div>
							<div class="bbb">
								<a href="#" class="go-post"> <img
									src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYYvpWheIfYYb8y3fZRgXHcg5gy5jUTTXGaw&usqp=CAU"
									class="thumbnail-img" />
								</a>
							</div>
						</div>
						<div class="ccc">
							<div class="bbb">
								<a href="#" class="go-post"> <img src=""
									class="thumbnail-img" />
								</a>
							</div>
							<div class="bbb">
								<a href="#" class="go-post"> <img src=""
									class="thumbnail-img" />
								</a>
							</div>
							<div class="bbb">
								<a href="#" class="go-post"> <img src=""
									class="thumbnail-img" />
								</a>
							</div>
						</div>
						<div class="ccc">
							<div class="bbb">
								<a href="#" class="go-post"> <img src=""
									class="thumbnail-img" />
								</a>
							</div>
							<div class="bbb">
								<a href="#" class="go-post"> <img src=""
									class="thumbnail-img" />
								</a>
							</div>
							<div class="bbb">
								<a href="#" class="go-post"> <img src=""
									class="thumbnail-img" />
								</a>
							</div>
						</div> -->
					</div>
				</div>
				<div class="next-page">
					<div class="paging">
						<!-- <p class="paging-btn">
							<a href=""> <img
								src="https://2bob.co.kr/skin/nodskin_argio/images/paging_prev.jpg"
								alt="" class="direction" />
							</a>
						</p>
						<p class="paging-num">
							<a href="">1</a> <a href="">2</a> <a href="">3</a> <a href="">4</a>
							<a href="">5</a>
						</p>
						<p class="paging-btn">
							<a href=""> <img
								src="https://2bob.co.kr/skin/nodskin_argio/images/paging_next.jpg"
								alt="다음으로" />
							</a>
						</p>
						<p class="paging-btn" id="paging-last">
							<a href=""> <img
								src="https://2bob.co.kr/skin/nodskin_argio/images/paging_d_next.jpg"
								alt="마지막으로" />
							</a>
						</p> -->
					</div>
				</div>
			</div>

			<div class="body-side-bar">
				<div class="sidebar-menu">
					<li class="sidebar-name"><a
						href="${pageContext.request.contextPath}/mainOk.m">
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
								<i class="fa-regular fa-bookmark"></i> <a href="${pageContext.request.contextPath}/mypage/mypageOk.my">찜한 레시피</a>
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
										<a
											href="${pageContext.request.contextPath}/mypage/mypageOk.my">프로필</a>
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
				<!-- 검색 창 -->
				<article class="sub-find">
					<div class="search-box">
						<div class="search-box2">
							<h1 class="qqq">검색</h1>
						</div>
						<div class="search-box3">
							<!-- 사이드바 드롭다운 추가 -->
							<select class="drop-down" id="drop-down" name="fruits">
								<option value="user">회원</option>
								<option value="post">게시물</option>
							</select> <input type="text" class="find-btn" id="find-btn"
								name="searchInput" placeholder="검색" />
							<button type="button" class="search-btn">검색</button>
							<!-- 사이드바 드롭다운 추가 -->
						</div>
					</div>
					<div class="recent-searches">
						<h3 class="recent-searches2">검색 항목</h3>
					</div>
					<div class="recent-searches-box">
						<!-- <div class="search-man">
							<div class="man-left">
								<a href="#">
								<a href="#"> <img
									src="https://cdn.eyesmag.com/content/uploads/posts/2023/02/01/main-78a4be17-7f32-4801-b67a-90db5b811916.jpg"
									alt="#" class="man-img" /> </a>
								</a>
							</div>
							<div class="man-right">
								<div class="man-id">
									<a href="#"> hot_boy </a>
									<a href="#" class="man-id2">hot_boy</a>
								</div>
								<div class="man-name">
									이동재
									<a href="#" class="man-name2">이동재</a>
								</div>
							</div>
							<div class="delete-btn">
								<div class="delete-btn2">
									<button class="alarm-btn">삭제</button>
								</div>
							</div>
						</div> -->
					</div>
				</article>
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
								<li><a
									href="${pageContext.request.contextPath}/assets/html/termsOfUse.html">이용약관</a></li>
								<li><a href="">About</a></li>
								<li><a href="">Contact</a></li>
								<li><a href="">Blog</a></li>
							</ul>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script >
      
      let userNumber = "${userVO.getUserNumber()}";
      </script>
	<script src="${pageContext.request.contextPath}/assets/js/youPage.js"></script>
	
</body>
</html>
