package com.cookpang.app.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cookpang.app.Execute;
import com.cookpang.app.user.dao.UserDAO;
import com.cookpang.app.user.dto.UserDTO;


public class JoinOkController implements Execute {
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserDAO userDAO = new UserDAO();
		UserDTO userDTO = new UserDTO();

		req.setCharacterEncoding("utf-8");
		
		userDTO.setUserId(req.getParameter("userId"));
		userDTO.setUserPassword(req.getParameter("userPassword"));
		userDTO.setUserName(req.getParameter("userName"));
		userDTO.setUserNickName(req.getParameter("userNickName"));
		userDTO.setUserPhoneNumber(req.getParameter("userPhoneNumber"));
		userDTO.setUserEmail(req.getParameter("userEmail"));
		userDTO.setUserAddress(req.getParameter("userAddress"));
		userDTO.setUserSelfIntroduction(req.getParameter("userSelIntroduction"));
		userDTO.setUserGender(req.getParameter("userGender"));
		
		userDAO.join(userDTO);
		
		resp.sendRedirect("/user/login.us");
		req.getRequestDispatcher("/app/join.jsp").forward(req, resp);
	}

}
