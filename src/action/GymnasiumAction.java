package action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import entity.Gymnasium;
import service.GymnasiumService;



@Controller
public class GymnasiumAction {
	@Autowired
	private  GymnasiumService  gymnasiumService;
	
	
	
	public GymnasiumService getGymnasiumService() {
		return gymnasiumService;
	}



	public void setGymnasiumService(GymnasiumService gymnasiumService) {
		this.gymnasiumService = gymnasiumService;
	}


	@RequestMapping("/Gymnasium.do")
	public ModelAndView List(){
		Map<String,Object> model = new HashMap<String,Object>();
		List<Gymnasium> gymnasiums = gymnasiumService.getGymnasiums();
		model.put("gymnasiums",gymnasiums);
		return new ModelAndView("Gymnasium",model);
	}
	

}
