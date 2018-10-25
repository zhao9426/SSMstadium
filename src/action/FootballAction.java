package action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import entity.Football;
import service.FootballService;



@Controller
public class FootballAction {
	@Autowired
	private  FootballService  footballService;
	
	
	
	public FootballService getFootballService() {
		return footballService;
	}



	public void setFootballService(FootballService footballService) {
		this.footballService = footballService;
	}


	@RequestMapping("/FootballHall.do")
	public ModelAndView List(){
		Map<String,Object> model = new HashMap<String,Object>();
		List<Football> footballs = footballService.getFootballs();
		model.put("footballs",footballs);
		return new ModelAndView("FootballHall",model);
	}

}
