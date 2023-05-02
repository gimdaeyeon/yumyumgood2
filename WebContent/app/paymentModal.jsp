<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>PaymentModal</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/PaymentModal.css">
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/font-applesdgothicneo@1.0/all.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- <script language="javascript">
    function showPopup() { window.open("08_2_popup.html", "a", "width=400, height=300, left=100, top=50"); }
    </script> -->
</head>

<body>
	<!-- <button id="show">팝업열기</button> -->
	<div class="background">
		<div class="window">
			<div class="popup">
			 <form action="${pageContext.request.contextPath}/pay/paymentOkmo.pa" method="POST">
				<div class="popup-header">
					<button id="close" type="button">
						<img
							src="${pageContext.request.contextPath}/assets/img/closemodalbutton.png"
							alt="">
					</button>
				</div>
				<div class="popup-body">
					<div class="contents">
						<a href="#"> <img
							src="${pageContext.request.contextPath}/upload/${payPost.getPostThumbnail()}"
							alt="${payPost.getPostThumbnail()}"
							style="height: 100px; width: 120px;"> <%-- <img src="${pageContext.request.contextPath}/upload/" alt="" style="height: 100px; width: 120px;"> --%>

						</a>
						<div class="contents-box">
							<p class="content-name">${payPost.getPostTitle()}</p>
							<p class="content-subname">${payPost.getPostContent()}</p>
							<p class="content-price">
							<%-- <input type="hidden" value="${payPost.getPostNumber()}" class="post-number" > --%>
							<input type="hidden" value="${payPost.getPostNumber()}" class="post-number" >
							<span class="result-price">
								
							</span>
							</p>
							<%-- <a href="#"> <img
								src="${pageContext.request.contextPath}/assets/img/shareicon.png"
								alt="" class="share-img">
							</a> --%>
						</div>

					</div>
					<h3
						style="font-size: 12px; font-weight: 500; color: rgb(153, 153, 153);">이
						레시피를 활용한 쿡팡 크리에이터</h3>
				</div>
				<div class="ingredients">
					<ul>
						<li class="ingredient-imgs">
							<c:forEach var="ingredient" items="${ingredient}">
							<div > <img
								src="/upload/${ingredient.getIngredientImageSystemName()}"
								alt="${ingredient.getIngredientName()}" class="ingredients-img">
							</div> 
						</c:forEach>
					</li>
					</ul>
				</div>


				<div class="footer">
				      
					<div class="checkboxBox">
						<div class="checkbox-span">필수 재료 선택 (최소 단위):</div>
						<div class="checkbox" id="checkboxes">


							
								<c:forEach var="ingredient" items="${ingredient}" varStatus="status">
									<span class = "amount-box">
										<input type="checkbox" name="ingredientNumber" class="amount-input"
											value="${ingredient.getIngredientNumber()}">
											<c:out value="${ingredient.getIngredientName()}"/>
											<c:out value="${ingredient.getIngredientSmallestUnit()}g"/>
	        							 <input type="hidden" name="price" class="price"
											value="${ingredient.getIngredientPrice()}">
									</span>
        							<c:if test="${status.count%4 == 0}">
										<br>
									</c:if>
								</c:forEach>
						</div>
					</div>


					<div class="containerBox">
						<div id="container">
							<!--수량카운트 js첨부-->
							<button id="minus" type="button">-</button>
							<span id="counter-number">1
							</span>
								<input type="hidden" name="orderItemQuantity" value="1" class="counterNumber">
							
							
							<button id="plus" type="button" >+</button>
							<!-- <button id="reset" type="button">reset</button> -->
						</div>

					
						<!-- 나중에 경로 바꾸기 payment로 -->
						<button type="submit" name="buybutton" id="buybutton">
							<span style="color: white"> 구매하기 </span>
						</button>
					</div>
				
				</div>
			</form>
			</div>

		</div>
	</div>




	<script src="https://code.jquery.com/jquery-3.6.3.js"
		integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
		crossorigin="anonymous"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/paymentModal.js"></script>
</body>
</html>