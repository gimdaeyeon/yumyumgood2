package com.cookpang.app.recipe.ingredient.dao;

import org.apache.ibatis.session.SqlSession;

import com.cookpang.app.recipe.ingredient.dto.RecipeIngredientDTO;
import com.mybatis.config.MyBatisConfig;

public class RecipeIngredientDAO {

	public SqlSession sqlSession;
	
	public RecipeIngredientDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void insert(RecipeIngredientDTO recipeIngredientDTO) {
		sqlSession.insert("recipeIngredient.insert", recipeIngredientDTO);
	}
}
