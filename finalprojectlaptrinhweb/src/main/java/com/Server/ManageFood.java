package com.Server;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.apache.commons.beanutils.BeanUtils;

import com.ExcuteData.FoodDao;
import com.Model.Food;
@MultipartConfig
@WebServlet({"/Manage/ManageFood", "/Manage/ManageFood/create","/Manage/ManageFood/update",
			"/Manage/ManageFood/delete","/Manage/ManageFood/reset","/Manage/ManageFood/edit"})
public class ManageFood extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getRequestURL().toString();
		Food food = null;
		if(url.contains("delete")) {
			food = new Food();
			request.setAttribute("food", food);

		}else if(url.contains("edit")) {
			edit(request, response);
		}else if(url.contains("reset")) {
			food = new Food();
			request.setAttribute("food", food);
		}
		
		findAll(request, response);
		request.getRequestDispatcher("/manager/manage_food.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getRequestURL().toString();
		if(url.contains("create")) {
			insert(request, response);
		}else if(url.contains("delete")) {
			
		}else if(url.contains("update")) {
			update(request, response);
		}else if(url.contains("reset")) {
			
		}
		
		findAll(request, response);
		request.getRequestDispatcher("/manager/manage_food.jsp").forward(request, response);
	}
	protected void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Food food = new Food();
			BeanUtils.populate(food, request.getParameterMap());
			food.setImage(UploadImage(request, response));
			FoodDao foodDao = new FoodDao();
			foodDao.insert(food);
			request.setAttribute("message", "Food inserted!!!");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: "+e.getMessage());
		}
	}
	protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int id =Integer.valueOf(request.getParameter("foodID"));
			FoodDao foodDao = new FoodDao();
			Food food = foodDao.FindByID(id);
			request.setAttribute("food", food);
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: "+e.getMessage());
		}
	}
	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Food food = new Food();
			BeanUtils.populate(food, request.getParameterMap());
			food.setImage(UploadImage(request, response));
			FoodDao foodDao = new FoodDao();
			foodDao.update(food);
			request.setAttribute("message", "Food Updated!!!");
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: "+e.getMessage());
		}
	}
	protected void findAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			FoodDao foodDao = new FoodDao();
			List<Food> list = foodDao.findAll();
			request.setAttribute("foods", list);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: "+e.getMessage());
		}
	}
	
	protected byte[] UploadImage(HttpServletRequest request, HttpServletResponse response ) throws IOException, ServletException {
		Part imagePart = request.getPart("upload");
		InputStream a = imagePart.getInputStream();
		byte[] bytes=new byte[a.available()];
		a.read(bytes);
		return bytes;
	}

}
