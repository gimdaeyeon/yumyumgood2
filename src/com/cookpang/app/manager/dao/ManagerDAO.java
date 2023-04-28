package com.cookpang.app.manager.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.cookpang.app.manager.vo.ManagerVO;
import com.cookpang.app.order.dto.OrderDTO;
import com.cookpang.app.order.vo.OrderVO;
import com.cookpang.app.payment.vo.PaymentVO;
import com.cookpang.app.post.vo.PostVO;
import com.cookpang.app.recipe.category.vo.RecipeCategoryVO;
import com.cookpang.app.user.dto.UserDTO;
import com.mybatis.config.MyBatisConfig;

public class ManagerDAO {

	public SqlSession sqlSession;
	
	public ManagerDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<UserDTO> selectUserAll(Map<String, Integer> pageMap){
		return sqlSession.selectList("manager.selectUserAll", pageMap);
	}
	
	public int getUserTotal() {
		return sqlSession.selectOne("manager.getUserTotal");
	}
	
	public void deleteUser(int userNumber) {
		 sqlSession.delete("manager.deleteUser", userNumber);
	}
	
	public UserDTO managerLogin(UserDTO userDTO) {
		return sqlSession.selectOne("manager.managerLogin", userDTO);
	}
	
	public boolean checkManager( int managerNumber) {
		 return sqlSession.selectOne("manager.checkManager", managerNumber).equals("manager") ? true : false   ;
	}
										
	public List<UserDTO> userSerch(Map<String, Object> pageMap){
		return sqlSession.selectList("manager.userSerch", pageMap);
	}
	
	public int getUserSerchTotal(Map<String, Object> pageMap) {
		return sqlSession.selectOne("manager.getUserSerchTotal",pageMap);
	}
	
	public ManagerVO getProfileInfo(int managerNumber) {
		return sqlSession.selectOne("manager.getProfileInfo", managerNumber);
	}
	
	public List<PostVO> selectPostAll(Map<String, Integer> postPageMap){
		return sqlSession.selectList("manager.selectPostAll", postPageMap);
	}
	
	public int getPostTotal() {
		return sqlSession.selectOne("manager.getPostTotal");
	}
	
	public List<PostVO> postSerch(Map<String, Object> postPageMap){
		return sqlSession.selectList("manager.postSerch", postPageMap);
	}
	
	public int getPostSerchTotal(Map<String, Object> postPageMap) {
		return sqlSession.selectOne("manager.getPostSerchTotal",postPageMap);
	}
	public List<OrderVO> selectOrderAll(Map<String, Integer> orderPageMap){
		return sqlSession.selectList("manager.selectOrderAll", orderPageMap);
	}
	public int getOrderTotal() {
		return sqlSession.selectOne("manager.getOrderTotal");
	}
	public void orderStatusUpdate(OrderDTO orderDTO) {
		sqlSession.update("manager.orderStatusUpdate",orderDTO);
	}
	public List<OrderVO> orderSerch(Map<String, Object> orderPageMap){
		return sqlSession.selectList("manager.orderSerch", orderPageMap);
	}
	
	public int getOrderSerchTotal(Map<String, Object> orderPageMap) {
		return sqlSession.selectOne("manager.getOrderSerchTotal",orderPageMap);
	}
	public List<RecipeCategoryVO> getCategoryViewCount() {
		return sqlSession.selectList("manager.getCategoryViewCount");
	}
	public List<PaymentVO> getTotalRevenue() {
		return sqlSession.selectList("manager.getTotalRevenue");
	}
	
	
}
