package com.cookpang.app.payment.vo;


public class PaymentVO {
	
	int userNumber;
    int orderNumber;
    int orderItemQuantity;
    String orderDate;
    String orderStatus;
    String ingredientName;
    int ingredientPrice;
    int orderItemPrice;
    String ingredientImageSystemName;
    int totalRevenue;
    String paymentDate;
	
	
    
    public PaymentVO() {}



	public int getUserNumber() {
		return userNumber;
	}



	public void setUserNumber(int userNumber) {
		this.userNumber = userNumber;
	}



	public int getOrderNumber() {
		return orderNumber;
	}



	public void setOrderNumber(int orderNumber) {
		this.orderNumber = orderNumber;
	}



	public int getOrderItemQuantity() {
		return orderItemQuantity;
	}



	public void setOrderItemQuantity(int orderItemQuantity) {
		this.orderItemQuantity = orderItemQuantity;
	}



	public String getOrderDate() {
		return orderDate;
	}



	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}



	public String getOrderStatus() {
		return orderStatus;
	}



	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}



	public String getIngredientName() {
		return ingredientName;
	}



	public void setIngredientName(String ingredientName) {
		this.ingredientName = ingredientName;
	}



	public int getIngredientPrice() {
		return ingredientPrice;
	}



	public void setIngredientPrice(int ingredientPrice) {
		this.ingredientPrice = ingredientPrice;
	}



	public int getOrderItemPrice() {
		return orderItemPrice;
	}



	public void setOrderItemPrice(int orderItemPrice) {
		this.orderItemPrice = orderItemPrice;
	}



	public String getIngredientImageSystemName() {
		return ingredientImageSystemName;
	}



	public void setIngredientImageSystemName(String ingredientImageSystemName) {
		this.ingredientImageSystemName = ingredientImageSystemName;
	}



	public int getTotalRevenue() {
		return totalRevenue;
	}



	public void setTotalRevenue(int totalRevenue) {
		this.totalRevenue = totalRevenue;
	}



	public String getPaymentDate() {
		return paymentDate;
	}



	public void setPaymentDate(String paymentDate) {
		this.paymentDate = paymentDate;
	}



	@Override
	public String toString() {
		return "PaymentVO [userNumber=" + userNumber + ", orderNumber=" + orderNumber + ", orderItemQuantity="
				+ orderItemQuantity + ", orderDate=" + orderDate + ", orderStatus=" + orderStatus + ", ingredientName="
				+ ingredientName + ", ingredientPrice=" + ingredientPrice + ", orderItemPrice=" + orderItemPrice
				+ ", ingredientImageSystemName=" + ingredientImageSystemName + ", totalRevenue=" + totalRevenue
				+ ", paymentDate=" + paymentDate + "]";
	}



	

    

	

	
}