package action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import entity.Basketball;
import service.BasketballService;



@Controller
public class BasketballAction {
	@Autowired
	private  BasketballService  basketballService;
	
	
	
	public BasketballService getBasketballService() {
		return basketballService;
	}



	public void setBasketballService(BasketballService basketballService) {
		this.basketballService = basketballService;
	}


	@RequestMapping("/BasketballHall.do")
	public ModelAndView List(){
		Map<String,Object> model = new HashMap<String,Object>();
		List<Basketball> basketballs = basketballService.getBasketballs();
		model.put("basketballs",basketballs);
		return new ModelAndView("BasketballHall",model);
	}

}
