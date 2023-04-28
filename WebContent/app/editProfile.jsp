<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String myTextareaValue = request.getParameter("myTextarea");
%>
<!-- 자기소개창 null값주기위한 변수생성   -->
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>editProfile</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/editProfile.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/editPassword.css" />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Josefin+Slab:ital@1&display=swap"
	rel="stylesheet" />
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/font-applesdgothicneo@1.0/all.min.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
	
	
<script src="https://kit.fontawesome.com/9416f63361.js"
	crossorigin="anonymous"></script>
<script>
	window.onload = function() {
		document
				.getElementById("address_kakao")
				.addEventListener(
						"click",
						function() {
							//주소입력칸을 클릭하면
							//카카오 지도 발생
							new daum.Postcode(
									{
										oncomplete : function(data) {
											//선택시 입력값 세팅
											document
													.getElementById("address_kakao").value = data.address; // 주소 넣기
											document
													.querySelector(
															"input[name=address_detail]")
													.focus(); //상세입력 포커싱
										},
									}).open();
						});
	};
</script>
</head>
<body>
	<div id="body-main">
		<div id="main-header"></div>
		<div id="main-body">
			<div class="body-main">
				<div class="body-main-body">

					<form
						action="${pageContext.request.contextPath}/profileImage/profileEditUpdateImg.pr"
						method="POST" enctype="multipart/form-data">
						<!-- enctype="multipart/form-data" -->
						<div class="picture-box">

							<div class="picture-box-left">
								
								<c:choose>
								<c:when test="${empty userProfileImageSystemName}">
									<div id="img-box">
									<img
										src="https://www.thechooeok.com/common/img/default_profile.png"
										class="img-box-img" />
									</div>	
								</c:when>
								<c:otherwise>
								<div id="img-box">
									<img
										src="/upload/${profileEditVO.getUserProfileImageSystemName()}"
										class="img-box-img" />
									<!-- src="/upload/${profileImage.getUserProfileImageSystemName()}"-->
								</div>
								</c:otherwise>
								</c:choose>
							</div>
							
							<div class="picture-box-rigth">
								<input type="file" name="file1" id="uploadLink"
									onchange="readURL(this);" class="change-picture"
									accept=".jpg, .jpeg, .png" /><br />

							</div>
							<button class="cancel-btn" type="button">
								<!-- 뒤로가기 화살표 js로 처리-->
								<i class="fa-solid fa-x"></i>
							</button>

						</div>


						<div class="nickname-box">
						
							<div class="nickname-box-left">닉네임</div>
							<div class="nickname-box-right">

								<input type="text" class="text-box2" placeholder="닉네임"
									name="userNickname" value="${profileEditVO.getUserNickname()}" />
								<div class="text-box2-text">
									<p>사람들이 이름, 별명 또는 비즈니스 이름 등 회원님의 알려진 이름을 사용하여 회원님의 계정을 찾을 수
										있도록 도와주세요.</p>
									<br />
									<p>이름은 14일 안에 두 번만 변경할 수 있습니다.</p>
								</div>
							</div>
						</div>
						<div class="name-box">
							<div class="name-box-left">사용자 이름</div>
							<div class="name-box-right">
								<input type="text" class="text-box3" placeholder="사용자 이름"
									name="userName" value="${profileEditVO.getUserName()}" />
								<div class="text-box3-text">대부분의 경우 이후 14일 동안 사용자 이름을 다시
									poe.ntry(으)로 변경할 수 있습니다.</div>
							</div>
						</div>
						<div class="introduce-box">
							<div class="introduce-box-left">소개</div>
							<div class="introduce-box-right">
								<textarea id="myTextarea" name="userSelfIntroduction"
									class="text-box4" maxlength="150"
									placeholder="${profileEditVO.getUserSelfIntroduction()}"> 
                 <%
                  if (myTextareaValue != null && !myTextareaValue.isEmpty()) {
                  %>
        <%=myTextareaValue%> <%
 } else {
 %> ${profileEditVO.getUserSelfIntroduction()}<%
 }
 %>
                </textarea>
								<div id="charCount" class="box4-cnt">0 / 150</div>
							</div>
						</div>
						<div class="birth-box">
							<div class="birth-box-left">생년월일</div>
							<div class="birth-box-right">
								<input type="date" class="birthday" value="" />
							</div>
						</div>
						<div class="phone-number-box">
							<div class="phone-box-left">핸드폰 번호</div>
							<div class="phone-box-right">
								<input type="tel" class="phone" name="userPhoneNumber"
									placeholder="010-1234-5678"
									value="${profileEditVO.getUserPhoneNumber()}" />
								<!-- pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" -->
							</div>
						</div>
						<div class="email-box">
							<div class="email-box-left">이메일</div>
							<div class="email-box-right">
								<input type="email" class="email"
									placeholder="example@example.com" name="userEmail"
									value="${profileEditVO.getUserEmail()}" />
							</div>
						</div>
						<div class="address-box">
							<div class="address-box-left">주소</div>
							<div class="address-box-right">
								<input id="address_kakao" type="text" class="address"
									placeholder="${profileEditVO.getUserAddress()}"
									name="userAddress" /> <input type="text" class="address"
									name="userAddressDetail" placeholder=" 상세 주소" />
							</div>
						</div>

						<div class="editok-box">
							<button type="submit" class="editok-btn">회원정보 수정</button>
						</div>
					</form>

					<!-- 정보 보내기  여기까지   -->

					<div class="eidt-password-box">
						<!-- 모달 열기 버튼 -->
						<button onclick="openModal()" class="eidt-modal">비밀번호 변경</button>

						<!-- 모달 창 -->
						 <form action="${pageContext.request.contextPath}/user/passwordEdit.edit" method = "post"
						 id="password-form">
							<div id="myModal" class="modal">
								<div class="modal-content">
									<span class="close">&times;</span>
									<div class="main">
										<div class="main-page">
											<div class="password-name">
												<h3>비밀번호 변경</h3>
											</div>
											<div class="password-text">
												<p>누군가 엑세스 권한을 얻으려고 시도중인 경우 계정을 보호하기 위해 이 세션을 제외한 모든
													세션에서 로그아웃됩니다.</p>
												<br>
												<p>비밀번호는 8자 이상이어야 하고 숫자, 영문, 특수기호(!$@%)의 조합을 포함해야 합니다.</p>
											</div>
											<div class="now-password-box">
												<input type="password" class="box1" placeholder="현재 비밀번호" required/>
											</div>
											<span class="pass-msg"></span>
											<div class="new-password-box">
												<input type="password" name="newPassword" class="box2" id ="box2" placeholder="새 비밀번호" required/>
											</div>
											<span class="password_check_msg2"></span>
											<div class="agian-password-box">
												<input type="password" name="newPassword2" class="box3" id ="box3" placeholder="새 비밀번호 재입력" required/>
											</div>
											<span class="password_check_msg"></span>
											<div class="no-password">
												<a
													href="${pageContext.request.contextPath}/user/findPassword.us"
													class="box4">비밀번호를 잊으셨나요?</a>
											</div>
											<div class="changeok-btn">
												<button type="submit" class="box5" value="#">비밀번호
													변경</button>
											</div>

										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
						
					<div class="goodbye-box">
					 <button type="button" class="goodbye-btn">회원 탈퇴</button>
										
				<!-- 		<a href="#" class="goodbye-btn">회원탈퇴</a> -->
					</div>
						
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
								<i class="fa-regular fa-bookmark"></i> <a href="${pageContext.request.contextPath}/mypage/mypageOk.my">찜한 레시피</a>
							</div>
						</li>
						<li class="sidebar-li">
							<div class="li-box">
							<i class="fa-regular fa-user"></i>
									
										<a
											href="${pageContext.request.contextPath}/mypage/mypageOk.my">프로필</a>

							</div>
						</li>
						<!-- </ul> -->
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
				<div class="userList">
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

		<div id="main-footer"></div>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://code.jquery.com/jquery-latest.min.js"></script>
	<script>
      let userNumber = "${sessionScope.userNumber}";
   </script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/editProfile.js"></script>
</body>
</html>
