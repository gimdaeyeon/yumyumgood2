package com.cookpang.app.recipe.ingredient.dto;


public class RecipeIngredientDTO {
    private int postNumber; // 레시피 게시물 고유 번호
    private int ingredientNumber; // 레시피에 사용된 재료 고유 번호
    private String recipeIngredientName; // 레시피 재료 이름
    private String recipeIngredientQuantity; // 레시피 재료 수량

    public RecipeIngredientDTO() {}

	@Override
	public String toString() {
		return "RecipeIngredientDTO [postNumber=" + postNumber + ", ingredientNumber=" + ingredientNumber
				+ ", recipeIngredientName=" + recipeIngredientName + ", recipeIngredientQuantity="
				+ recipeIngredientQuantity + "]";
	}

	public int getPostNumber() {
		return postNumber;
	}

	public void setPostNumber(int postNumber) {
		this.postNumber = postNumber;
	}

	public int getIngredientNumber() {
		return ingredientNumber;
	}

	public void setIngredientNumber(int ingredientNumber) {
		this.ingredientNumber = ingredientNumber;
	}

	public String getRecipeIngredientName() {
		return recipeIngredientName;
	}

	public void setRecipeIngredientName(String recipeIngredientName) {
		this.recipeIngredientName = recipeIngredientName;
	}

	public String getRecipeIngredientQuantity() {
		return recipeIngredientQuantity;
	}

	public void setRecipeIngredientQuantity(String recipeIngredientQuantity) {
		this.recipeIngredientQuantity = recipeIngredientQuantity;
	}

}