package tpVolWeb.controller;

import java.io.DataOutput;

import javax.servlet.http.HttpServlet;

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
		
		return new ModelAndView("listeReservation", "reservation", daoClient.findByKey(key));
	}
}
