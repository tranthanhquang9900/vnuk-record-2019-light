/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vn.edu.vnuk.record.mvc.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.edu.vnuk.record.mvc.logic.Logic;

/**
 *
 * @author michel
 */
@SuppressWarnings("serial")
@WebServlet("/mvc")
public class ControllerServlet extends HttpServlet {
    
	@Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String parameter = request.getParameter("logic");
        String className = "vn.edu.vnuk.record.mvc.logic." + parameter;
        
        try {
            @SuppressWarnings("rawtypes")
			Class classe = Class.forName(className);
            Logic logic = (Logic) classe.newInstance();
            String page = logic.run(request, response);
            request.getRequestDispatcher(page).forward(request, response);
        } 
        
        catch (Exception e) {
            throw new ServletException("Something went wrong with the Logic !", e);
        }
    }
    
}
