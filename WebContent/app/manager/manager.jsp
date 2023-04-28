<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>관리자page</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/manager.css" />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Josefin+Slab:ital@1&display=swap"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff" />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link rel="icon" href="../img/managerImg/pecoImg.png" />
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
				<div class="main-page-tbb">
					<div class="main-top">
						<div class="profile-picture">
							<div class="profile">
								<div class="imgbox-div">
									<div class="img-box">
										<c:choose>
											<c:when
												test="${empty profileImage.getUserProfileImageSystemName()}">
												<img
													src="https://www.thechooeok.com/common/img/default_profile.png"
													alt="${profileImage.getUserProfileImageSystemName()}"
													class="profile-image" />
											</c:when>
											<c:otherwise>
												<img
													src="${pageContext.request.contextPath}/upload/${profileImage.getUserProfileImageSystemName()}"
													alt="${profileImage.getUserProfileImageSystemName()}"
													class="profile-image" />
											</c:otherwise>
										</c:choose>
									</div>
								</div>
								<div class="profile-box">
									<div class="nickname-box">
										<p class="manager-id">${manager.getUserId()}</p>
										<div class="manage">
											<a
												href="${pageContext.request.contextPath}/user/profileEdit.edit">프로필
												편집</a>
										</div>
										<div class="ingredient-insert">
											<a href="/manager/ingredietnInsert.manager"> 재료추가 </a>
										</div>
									</div>
									<div class="follow-box">
										<p>
											게시물<span>${manager.getPostCount()}</span>
										</p>
										<p>
											<a href="#">팔로워</a><span>${manager.getFollowersCount()}</span>
										</p>
										<p>
											<a href="#">팔로우</a><span>${manager.getFollowingCount()}</span>
										</p>
									</div>
									<div class="namebox">
										<h6>${manager.getUserSelfIntroduction()}</h6>
									</div>
								</div>
							</div>
						</div>
						<!-- <div>
                <canvas id="live"></canvas>
              </div> -->
					</div>

					<div class="main-banner">
						<div class="manage-menu">
							<div id="manage-menu-text" class="memberM">
								<div class="manage-member-click">회원관리</div>
							</div>
							<div id="manage-menu-text" class="memberPost">
								<div class="manage-post-click">게시물관리</div>
							</div>
							<div id="manage-menu-text" class="memberPay">
								<div class="manage-pay-click">결제관리</div>
							</div>
						</div>
					</div>

					<div class="main-bottom">
						<div class="manage-member">
							<div class="chart">
								<div class="myChart-1">
									<canvas id="myChart" width="900px" height="400px"></canvas>
								</div>
								<div class="myChart-2">
									<canvas id="mycate" width="900px" height="400px"></canvas>
								</div>
							</div>

							<div>
								<form action="/manager/UserDeleteOk.manager" method="post" class="user-delete-form">
									<div class="member-main test" id="member-Menu">
										<div class="member-serch">
											<input hidden="hidden" />
											<input type="text" id="user-serch"
												name="userIdOrName" placeholder="회원의 아이디나 이름을입력하세요" />
											<button type="button" class="user-serch-btn">
												<span class="btn-span"> <i class="fa-solid fa-magnifying-glass "></i></span>
											</button> 
										</div>
										<table class="member-table">
											<tbody>
												<tr>
													<th>번호</th>
													<th>아이디</th>
													<th>이름</th>
													<th>이메일</th>
													<th>전화번호</th>
													<th>성별</th>
													<th>상태</th>
													<th>수정</th>
													<th>삭제</th>
												</tr>


												<c:choose>

													<c:when test="${not empty userList}">
														<c:forEach var="user" items="${userList}">

															<tr>
																<td class="user-number">${user.getUserNumber()}</td>
																<td class="user-Id">
																	<!--해당 유저페이지 경로  --> <a href="#">
																		${user.getUserId() } </a>
																</td>
																<td class="user-name">
																	<!--해당 유저페이지 경로  --> <a href="#">
																		${user.getUserName() } </a>
																</td>
																<td class="user-email">${user.getUserEmail()}</td>
																<td class="user-phone-number">${user.getUserPhoneNumber() }</td>
																<td class="user-gender">${user.getUserGender() }</td>
																<td class="user-status">${user.getUserStatus() }</td>
																<td><a href="#">수정</a></td>
																<td>
																	<div class="checkbox-c">
																		<a href="#"><input type="checkbox" name="user"
																			class="user-check-box"
																			value="${user.getUserNumber()}" /></a>
																	</div>
																</td>
															</tr>

														</c:forEach>
													</c:when>
													<c:otherwise>
														<tr>
															<td colspan="5" align="center">등록된 회원이 없습니다.</td>
														</tr>
													</c:otherwise>
												</c:choose>

											</tbody>
										</table>
										<button type="submit" class="button user-delete-btn"
											id="memberDelete">회원 삭제</button>
										<div class="pagination user-page">
											<ul>
												<!-- ========== 페이징 처리 예시 ============ -->


												<c:if test="${prev}">
													<li><a
														href="${pageContext.request.contextPath}/manager/managerListRest.manager?page=${startPage - 1}"
														class="prev">&lt;</a></li>
												</c:if>

												<c:forEach var="i" begin="${startPage}" end="${endPage}">
													<c:choose>
														<c:when test="${!(i == page) }">
															<li><a
																href="${pageContext.request.contextPath}/manager/managerListRest.manager?page=${i}">
																	<c:out value="${i}" />
															</a></li>
														</c:when>
														<c:otherwise>
															<li><a href="#" class="active"> <c:out
																		value="${i}" />
															</a></li>
														</c:otherwise>
													</c:choose>
												</c:forEach>

												<c:if test="${next}">
													<li><a
														href="${pageContext.request.contextPath}/manager/managerListRest.manager?page=${endPage + 1}"
														class="next">&gt;</a></li>
												</c:if>



												<!-- ========== /페이징 처리 예시 ============ -->
											</ul>
										</div>
									</div>
								</form>
							</div>

							<div>
								<form action="/manager/postDeleteOk.manager" method="post" class="post-delete-form">
									<div class="manage-post test" id="member-post">
										<div class="post-serch">
											<input type="text" name="postSerch" id="post-search"
												placeholder="게시물 제목을 입력하세요" />
											<button type="button" class="post-serch-btn">
												<span class="btn-span"> <i
													class="fa-solid fa-magnifying-glass "></i></span>
											</button>

										</div>
										<table class="post-table">
											<tbody>
												<tr>
													<th>번호</th>
													<th>게시물 제목</th>
													<th>아이디</th>
													<th>조회수</th>
													<th>날짜</th>
													<th>수정</th>
													<th>삭제</th>




													<c:choose>

														<c:when test="${not empty postList}">
															<c:forEach var="post" items="${postList}">
																<tr>
																	<td class="post-number">${post.getPostNumber()}</td>
																	<td class="post-title">
																		<!--해당 게시물페이지 경로  --> <a
																		href="${pageContext.request.contextPath}/post/postReadOk.po?postNumber=${post.getPostNumber()}">
																			${post.getPostTitle()} </a>
																	</td>
																	<td class="post-user-Id">
																		<!--해당 유저페이지 경로  --> <a
																		href="${pageContext.request.contextPath}/post/postReadOk.po?postNumber=${post.getPostNumber()}">
																			${post.getUserId() } </a>
																	</td>
																	<td class="post-view-count">
																		${post.getPostViewCount() }</td>
																	<td class="post-date">${post.getPostDate()}</td>
																	<td><a href="#">수정</a></td>
																	<td>
																		<div class="checkbox-c">
																			<input type="checkbox" name="post"
																				class="post-check-box"
																				value="${post.getPostNumber()}" />
																		</div>
																	</td>
																</tr>

															</c:forEach>
														</c:when>
														<c:otherwise>
															<tr>
																<td colspan="6" align="center">등록된 게시물이 없습니다.</td>
															</tr>
														</c:otherwise>
													</c:choose>
											</tbody>
										</table>
										<button class="button" type="submit">게시글 삭제</button>
										<div class="pagination post-page">
											<ul>

												<c:if test="${postPrev}">
													<li><a
														href="${pageContext.request.contextPath}/manager/managerPostOk.manager?postPage=${postStartPage - 1}"
														data-postPage="${postStartPage - 1}" class="prev">&lt;</a></li>
												</c:if>

												<c:forEach var="j" begin="${postStartPage}"
													end="${postEndPage}">
													<c:choose>
														<c:when test="${!(j == postPage) }">
															<li><a
																href="${pageContext.request.contextPath}/manager/managerPostOk.manager?postPage=${j}"
																data-postPage="${j}"> <c:out value="${j}" />
															</a></li>
														</c:when>
														<c:otherwise>
															<li><a
																href="${pageContext.request.contextPath}/manager/managerPostOk.manager?postPage=${j}"
																data-postPage="${j}" class="active"> <c:out
																		value="${j}" />
															</a></li>
														</c:otherwise>
													</c:choose>
												</c:forEach>

												<c:if test="${postNext}">
													<li><a
														href="${pageContext.request.contextPath}/manager/managerPostOk.manager?postPage=${postEndPage + 1}"
														data-postPage="${postEndPage + 1}" class="next">&gt;</a></li>
												</c:if>


											</ul>
										</div>
									</div>
								</form>
							</div>

							<!-- 결제 관리  -->
							<div>
								<div class="manage-payment test" id="member-payment">
									<div class="payment-serch">
										<input type="text" name="paymentSerch" id="payment-serch"
											placeholder="회원아이디나 주문번호를 입력하시오" />
										<button type="button" class="order-serch-btn">
											<span class="btn-span">
											<i
													class="fa-solid fa-magnifying-glass "></i>
											</span>
										</button>
									</div>
									<table class="payment-table">
										<tbody>
											<tr>
												<th>주문번호</th>
												<th>아이디</th>
												<th>결제 금액</th>
												<th>주문날짜</th>
												<th>주문상태</th>
												<th>확인</th>
												<th>주문상제정보</th>
												<th>주문상품</th>

												<!-- 눌렀을 때 주문한 재료 번호 , 재료이름, 주문수량, 배송메시지, 받는사람 -->
											</tr>

										
										</tbody>


										<!--이부분은 조금 나중에 ajax로 처리할듯  -->
										<table class="order" style="display: none">
											<tr>
												<td>1</td>
												<td>받는사람 : 나선욱</td>
												<td>서울 강동구 아리수로 46 강력반21</td>
												<td>빨리 와주세요 현기증 나니깐.</td>
											</tr>
										</table>
										<table class="product" style="display: none">
											<tr>
												<td>1</td>
												<td>새우</td>
												<td>100g</td>
												<td>2개</td>
											</tr>
											<tr>
												<td>1</td>
												<td>새우</td>
												<td>100g</td>
												<td>2개</td>
											</tr>
										</table>
										<!--이부분은 조금 나중에 ajax로 처리할듯  -->


									</table>

									<div class="pagination order-page">
										<ul>
											<!-- ========== 페이징 처리 예시 ============ -->
											<li><a href="#" class="prev">&lt;</a></li>
											<li><a href="#" class="active">1</a></li>
											<li><a href="#">2</a></li>
											<li><a href="#">3</a></li>
											<li><a href="#">4</a></li>
											<li><a href="#">5</a></li>
											<li><a href="#" class="next">&gt;</a></li>
											<!-- ========== /페이징 처리 예시 ============ -->
										</ul>
									</div>
								</div> 
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="body-side-bar">
				<div class="sidebar-menu">
					<li class="sidebar-name"><a href="#">
						<img alt="!" src="${pageContext.request.contextPath}/assets/img/main/logo3.png" class="logo-img">
					</a></li>
					<ul class="sidebar-ul">
						<li class="sidebar-li">
							<div class="li-box">

								<i class="fa-solid fa-house"></i> <a href="#">홈</a>
							</div>
						</li>
						<li class="sidebar-li">
							<div class="li-box">

								<i class="fa-solid fa-magnifying-glass"></i> <a href="#">검색</a>
							</div>
						</li>
						<li class="sidebar-li">
							<div class="li-box">

								<i class="fa-regular fa-heart"></i> <a href="#">알림</a>
							</div>
						</li>
						<li class="sidebar-li">
							<div class="li-box">

								<i class="fa-regular fa-square-plus"></i> <a href="#">만들기</a>
							</div>
						</li>
						<li class="sidebar-li">
							<div class="li-box">

								<i class="fa-regular fa-bookmark"></i> <a href="#">찜한 레시피</a>
							</div>
						</li>
						<li class="sidebar-li">
							<div class="li-box">

								<i class="fa-regular fa-user"></i> <a href="#">프로필</a>
							</div>
						</li>
					</ul>
					<c:choose>
						<c:when test="${empty sessionScope.managerNumber}">
							<li class="sidebar-login"><a
								href="${pageContext.request.contextPath}/manager/managerLogin.manager">로그인</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="sidebar-login"><a
								href="${pageContext.request.contextPath}/user/logoutOk.us">로그아웃</a></li>
						</c:otherwise>
					</c:choose>



				</div>
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
								<li><a href="../html/termsOfUse.html">이용약관</a></li>
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
	<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
	<script src="https://code.jquery.com/jquery-3.6.4.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript" src="/js/bootstrap.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/manager.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/managerChart.js"></script>
</body>

</html>