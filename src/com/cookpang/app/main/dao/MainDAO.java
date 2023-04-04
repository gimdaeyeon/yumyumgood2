package com.cookpang.app.main.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.cookpang.app.post.vo.PostVO;
import com.cookpang.app.recipe.category.dto.RecipeCategoryDTO;
import com.mybatis.config.MyBatisConfig;

public class MainDAO {
	
public SqlSession sqlSession;
	
	public MainDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<PostVO> postAll(Map<String, Integer> pageMap){
		return sqlSession.selectList("post.postAll", pageMap);

	}
	
	public int getTotal() {
		return sqlSession.selectOne("post.getTotal");
	}
	
	public List<PostVO> categoryList(Map<String, Integer> pageMap) {
		return sqlSession.selectList("category.categoryList", pageMap);
	}
	
	public int categoryTotal(int categoryNumber) {
		return sqlSession.selectOne("category.categoryTotal", categoryNumber);
	}
	
}