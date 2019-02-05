package tpVolWeb.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import tpVol.dao.DaoClient;

@Controller
public class clientController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	@Autowired
	private DaoClient daoClient;
	
	public ModelAndView list() {
		
		return null;
	}
}
