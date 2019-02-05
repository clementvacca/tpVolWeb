package tpVolWeb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import tpVolSpring.entity.Aeroport;
import tpVolSpring.entity.Vol;
import tpVolSpring.repository.AeroportRepository;
import tpVolSpring.repository.VolRepository;
import tpVolSpring.service.VolService;


@Controller
@RequestMapping("/aeroport")
public class AeroportController {
	
	@Autowired
	private AeroportRepository aeroportRepository;
	
	@GetMapping("/rechercherAeroport")
	public String rechercherAeroport(Model model) {
		return goListAeroport(new Aeroport(),model);
	}
	
	private String goListAeroport(Aeroport aeroport, Model model) {
		model.addAttribute("aeroports",aeroport);
		return "aeroport/listAeroport";
	}
	
	@GetMapping("/aeroport/listAeroport")
	public ModelAndView listVol(){
		return new ModelAndView("aeroport/listAeroport","aeroports", aeroportRepository.findAll() );
	}
}
