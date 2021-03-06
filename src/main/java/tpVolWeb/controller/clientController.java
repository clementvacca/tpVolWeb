package tpVolWeb.controller;

import java.io.DataOutput;

import javax.servlet.http.HttpServlet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import tpVolSpring.repository.ClientRepository;


@Controller
public class clientController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	@Autowired
	private ClientRepository clientRepository;
	
	@GetMapping("/reservations")
	public ModelAndView list(@RequestParam(name="key") Long key) {
		return new ModelAndView("listeReservations", "reservations", clientRepository.getOne(key).getReservations());
	}
}
