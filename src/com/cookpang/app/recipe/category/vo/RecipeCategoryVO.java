package com.cookpang.app.recipe.category.vo;


public class RecipeCategoryVO {
	private int postNumber;
	private int categoryNumber;
	private String categoryName;
	private int postViewCount;
	
	
	public RecipeCategoryVO() {}


	public int getPostNumber() {
		return postNumber;
	}


	public void setPostNumber(int postNumber) {
		this.postNumber = postNumber;
	}


	public int getCategoryNumber() {
		return categoryNumber;
	}


	public void setCategoryNumber(int categoryNumber) {
		this.categoryNumber = categoryNumber;
	}


	public String getCategoryName() {
		return categoryName;
	}


	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}


	public int getPostViewCount() {
		return postViewCount;
	}


	public void setPostViewCount(int postViewCount) {
		this.postViewCount = postViewCount;
	}


	@Override
	public String toString() {
		return "RecipeCategoryVO [postNumber=" + postNumber + ", categoryNumber=" + categoryNumber + ", categoryName="
				+ categoryName + ", postViewCount=" + postViewCount + "]";
	}


	
	
	
	}
