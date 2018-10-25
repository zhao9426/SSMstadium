package action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import entity.Badminton;
import service.BadmintonService;



@Controller
public class BadmintonAction {
	@Autowired
	private  BadmintonService badmintonService;
	
	
	
	public BadmintonService getBadmintonService() {
		return badmintonService;
	}



	public void setBadmintonService(BadmintonService badmintonService) {
		this.badmintonService =badmintonService;
	}


	@RequestMapping("/BadmintonCourt.do")
	public ModelAndView List(){
		Map<String,Object> model = new HashMap<String,Object>();
		List<Badminton> badmintons =badmintonService.getBadmintons();
		model.put("badmintons",badmintons);
		return new ModelAndView("BadmintonCourt",model);
	}

}
