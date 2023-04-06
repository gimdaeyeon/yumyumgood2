package com.cookpang.app.manager;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ManagerFrontController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String target = req.getRequestURI().substring(req.getContextPath().length());
		System.out.println(target);
		System.out.println("프론트 컨트롤러 잘 탄당!!");

		
		switch(target) {
		case "/manager/managerListOk.manager":
			new ManagerListOkController().execute(req, resp);
			break; 
		case "/manager/managerListRest.manager":
			new ManagerListRestController().execute(req, resp);
			break;
		case "/manager/UserDeleteOk.manager":
			new ManagerUserDeleteOkController().execute(req, resp);
			break;
		case "/manager/managerLogin.manager":
			req.getRequestDispatcher("/app/manager/managerLogin.jsp").forward(req, resp);
			break;
		case "/manager/managerLoginOk.manager":
			new ManagerLoginOkController().execute(req, resp);
			break;
		case "/manager/userSerch.manager":
			new UserSerchOkController().execute(req, resp);
			break;
		}
		
	
		
		
		
		
		
	}

}
