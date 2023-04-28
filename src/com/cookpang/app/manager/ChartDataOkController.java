package com.cookpang.app.manager;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cookpang.app.Execute;
import com.cookpang.app.manager.dao.ManagerDAO;
import com.cookpang.app.payment.vo.PaymentVO;
import com.cookpang.app.recipe.category.vo.RecipeCategoryVO;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

public class ChartDataOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ManagerDAO managerDAO = new ManagerDAO();
		
		List<RecipeCategoryVO> cateViewCountList = managerDAO.getCategoryViewCount();
		List<PaymentVO> salesList= managerDAO.getTotalRevenue();
		
		System.out.println(salesList);
		
		
		Gson gson = new Gson();
		JsonObject result = new JsonObject();
		
		JsonArray cateViewCountArray = gson.toJsonTree(cateViewCountList).getAsJsonArray();
		JsonArray dailySalesArray = gson.toJsonTree(salesList).getAsJsonArray();
		
		result.add("cateViewCounts", cateViewCountArray);
		result.add("dailySales", dailySalesArray);
		
		resp.setContentType("application/json");
		resp.setCharacterEncoding("utf-8");
		PrintWriter out = resp.getWriter();
		out.print(result.toString());
		
		System.out.println(result.toString());
		
		out.close();
		
		
	}

}
