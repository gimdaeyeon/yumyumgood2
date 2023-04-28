<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>post_read</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/postRead.css">
<script src="https://kit.fontawesome.com/c6992f5b12.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/font-applesdgothicneo@1.0/all.min.css">
<!--게시글 글꼴-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
	rel="stylesheet">
	
</head>

<body>


	<div class="globar-wrap">

		<div class="container">

			<div class="read-box-wrap">

				<!-- 게시물 사진영역 -->

				<div class="read-imgs-container">

					<ul class="read-imgs">
					
						<c:forEach var="postFile" items="${postFileList}">
							<li>
								<div class="read-img-box">
									<!-- 임시 이미지 -->
									<img
										src="${pageContext.request.contextPath}/upload/${postFile.getPostFileSystemName()}"
										alt="게시물 사진" class="read-img">
								</div>
							</li>

						</c:forEach>

					</ul>



				</div>
					<div class="read-img-controller-box">
						<div class="read-box-imgs-prev">
							<button type="button" class="img-prev-next-button prev-btn">
								<i class="fa-solid fa-circle-chevron-left"></i>
							</button>
						</div>

						<!-- 다음사진으로 넘기기  -->
						<div class="read-box-imgs-next">
							<button type="button" class="img-prev-next-button next-btn">
								<i class="fa-solid fa-circle-chevron-right"></i>
							</button>
						</div>
					</div>


				<!-- 게시물 내용영역 -->

				<div class="read-content-wrap">

					<!-- 게시물 작성자 프로필 영역 -->
					<div class="writer-info-box">

						<!-- 임시 프로필사진 -->
						<div class="writer-profile">

							<!-- 작성자 페이지로 이동 -->
							<a href="/user/youPage.us?userNumber=${post.getUserNumber()}" class="writer-link"> <!--프로필사진 분기처리 비어있으면 기본 프로필사진으로  -->
								<c:choose>
									<c:when test="${empty post.getUserProfileImageSystemName()}">
										<img
											src="https://www.thechooeok.com/common/img/default_profile.png"
											alt="${pageContext.request.contextPath}${post.getUserProfileImageSystemName()}"
											class="writer-profile-img">
									</c:when>
									<c:otherwise>
										<img src="${pageContext.request.contextPath}/upload/${post.getUserProfileImageSystemName()}"
											alt="${post.getUserProfileImageSystemName()}"
											class="writer-profile-img">
									</c:otherwise>
								</c:choose>
							</a>

						</div>

						<div class="writer-id">
							<!--작성자의 youpage로 이동  -->
							<input type="hidden" value="${post.getUserNumber()}"
								class="post-user-number"> <a href="/user/youPage.us?userNumber=${post.getUserNumber()}" class="writer-link">
								<!-- 임시 작성자 id -->
								<h6 style = "margin-top: 29.5px;">${post.getUserNickName()}</h6>
							</a>


							<c:if test="${sessionScope.userNumber == post.getUserNumber() }">
								<button class="more-btn">
									<i class="fa-solid fa-ellipsis"></i>
								</button>
               
    						</c:if>

						</div>


					</div>

					<!-- 작성된 내용 -->
					<div class="read-main-content">
						<div class="read-content-title">
							<!-- 임시 게시물 제목 -->
							<!-- 제목 최대 자릿수 44 -->
							<h3 style="margin-top: -20px;">${post.getPostTitle()}</h3>

						</div>


						<div class="content-box">
							<div class="content-msg-box">
								<!--게시물내용 보이는곳-->
								
								${ post.getPostContent()}
							</div>
							
							<div class="content-choice-box">
								<div class="ingredient-btn-box">

									<!-- 재료, 레시피 아이콘 찾아보기 -->
									<button class="ingredient-btn">재료 보기</button>
								</div>
								<div class="recipe-btn-box">
									<button class="recipe-btn">레시피 보기</button>
								</div>

							</div>

							<!-- 재료영역 -->
							<div class="ingredient-box js-contents">






								<!-- 재료 목록들 -->
								<ul class="ingredient-list">

									<div class="ingredient-title">
										<!-- 임시 재료묶음 제목 -->
										기본재료
									</div>
									
									<c:forEach var="ingredient" items="${ingredients}">

										<li class="ingredient-info">
											<div class="ingredient-name">
												<!-- 임시 재료 이름 -->
												${ingredient.getIngredientName()}
											</div>

											<div class="ingredient-quantity">
												<!-- 임시 재료 수량 -->
												${ingredient.getRecipeIngredientQuantity()}
											</div>
										</li>
									</c:forEach>

								</ul>






							</div>

							<!-- 레시피 내용, 카테고리 영역 -->
							<div class="recipe-container js-contents">
								<div class="recipe-category-wrap">

									<!--a테그 : 해당 카테고리 누르면 검색화면으로 이동하고  -->
									<!-- 그 카테고리가 검색된다.  -> 나중에 시간있으면-->
									<ul class="categories">

										<c:forEach var="category" items="${categoryList}">

											<li class="category-list"><a href="#">${category.getCategoryName() }</a>
											</li>


										</c:forEach>

									</ul>


								</div>


								<div class="main-content">
									<!-- 임시 내용 -->
									${post.getPostRecipeContent()}

								</div>



							</div>

							<!-- 댓글 리스트 영역 -->
							<div class="read-comment-container js-contents">

								<ul class="read-comment">


									<li class="read-comment-box">
										<div class="comment-writer-img-box">

											<!-- 임시 댓글 프로필사진 -->
											<img
												src="https://www.thechooeok.com/common/img/default_profile.png"
												alt="댓글작성자 프로필 사진" class="comment-writer-profile-img">
											<%-- <img src="${pageContext.request.contextPath}/upload/${commentList.getUserProfileImageSystemName()}"
															alt="댓글작성자 프로필 사진" class="comment-writer-profile-img"> --%>

										</div>
										<div class="comment-content-box">
											<!-- 임시 댓글작성자 아이디 -->
											<div class="comment-writer-id">임시 아이디</div>
											<div class="read-comment-content">
												<!-- 임시 댓글 내용 -->
												댓글 내용

											</div>
											<div class="read-comment-more">
												<div class="comment-write-time" style="margin-top: -4px;">댓글 작성 시간</div>
												<!--댓글번호  -->
												<input type="hidden" value="${post.getPostNumber()}"
													name="postNumber" class="comment-number">
												<button type="button" class="comment-delete" style="margin-top: -4px;">삭제하기</button>
											</div>
										</div>
									</li>

								</ul>

							</div>
						</div>

					</div>

					<div class="comment-form-container">
						<form class="comment-form">

							<!-- 게시물 번호 작성 -->
							<input type="hidden" name="postNumber"
								value="${post.getPostNumber()}" class="hidden-post-number">

							<section class="reader-act-section">

								<span class="like-box">

									<button class="like-btn" type="button">

										<c:choose>
											<c:when test="${likeStatus}">
												<i class="fa-solid fa-heart like-t js-like-btn"
													style="color: red;"></i>
											</c:when>
											<c:otherwise>
												<i class="fa-regular fa-heart like-f js-like-btn"></i>
											</c:otherwise>
										</c:choose>


									</button>

								</span> <span class="comment-btn-box">
									<button class="comment-btn" type="button">
										<i class="fa-regular fa-comment"></i>
									</button>
								</span>

								<sapn class="buy-box">
									<a href="/pay/paymentmo.pa?postNumber=${post.getPostNumber()}">
										<button class="buy-btn" type="button">
										<i class="fa-solid fa-cart-shopping"></i>
									</button>
								</a>
								
								</sapn>

								<sapn class="save-box">
								<button class="save-btn" type="button">
									<c:choose>
										<c:when test="${saveStatus}">
											<i class="fa-solid fa-bookmark save-t"></i>
										</c:when>
										<c:otherwise>
											<i class="fa-regular fa-bookmark save-f" style ="margin-right: 20px;"></i>
										</c:otherwise>
									</c:choose>
								</button>
								</sapn>


							</section>

							<div class="like-count-box">
								<button class="like-count-btn">
									<!-- 임시 좋아요 갯수 -->
									${post.getPostLikeCount()}
								</button>

								<div class="post-view-count-box">
									<i class="fa-regular fa-eye view-icon"></i>
									<!-- 임시 조회수 -->
									${post.getPostViewCount()}
								</div>

							</div>

							<div class="date-box">
								<!-- 임시 게시일 -->
								${post.getPostDate()}
							</div>


							<div class="comment-wrap">

								<div class="comment-box">
									<textarea name="readComment" class="comment-input"
										id="comment-input" placeholder="댓글 달기.."></textarea>

									<button type="button" class="comment-post-btn"
										data-postNumber="${post.getPostNumber()}">
										<h4>게시</h4>
									</button>

								</div>
							</div>
						</form>
					</div>


				</div>


			</div>


		</div>


	</div>


	<button class="close-btn">
		<!-- 이전 경로로 이동 -->
		<i class="fa-solid fa-x"></i>

	</button>
	</div>
	
	
		<form action="/post/postDeleteOk.po" method="post" class="post-delete-form">
			<div id="myModal" class="modal">
					<input type="hidden" value="${post.getPostNumber()}" name="postNumber" class="post-number-by-post-delete">
					<div class="modal-content">
			  		<h3>게시물을 삭제하시겠습니까?</h3>
			  			<button class="post-delete-btn" type="submit" >삭제하기</button>
			  			<button class="modal-cancel-btn" type="button" >취소</button>
				</div>
			</div>
		</form>
	
	<!--게시물 삭제 부분  -->
	



	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>
		let userNumber = "${sessionScope.userNumber}";
	</script>

	<script src="${pageContext.request.contextPath}/assets/js/postRead.js"></script>
</body>

</html>