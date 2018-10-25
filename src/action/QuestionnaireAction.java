package action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import entity.Questionnaire;
import entity.Stadium;
import service.QuestionnaireService;



@Controller
public class QuestionnaireAction {
	@Autowired
	QuestionnaireService  questionnaireService;
	public QuestionnaireService getQuestionnaireService() {
		return questionnaireService;
	}

	public void setQuestionnaireService(QuestionnaireService questionnaireService) {
		this.questionnaireService = questionnaireService;
	}

	@RequestMapping("/QuestionnaireList.do")
	public ModelAndView List(){
		Map<String,Object> model = new HashMap<String,Object>();
		List<Questionnaire> questionnaires = questionnaireService.getQuestionnaires();
		model.put("questionnaires",questionnaires);
		System.out.println(questionnaires);
		return new ModelAndView("QuestionnaireList",model);
	}
	
	 @RequestMapping("/QuestionnaireAdd.do")
		public String stadiumAdd(Questionnaire questionnaire,Model model)
		{
		 System.out.println(questionnaire.getQid());
			if(questionnaireService.addQuestionnaire(questionnaire))
			{
				model.addAttribute("info","添加成功");
				List<Questionnaire> questionnaires = questionnaireService.getQuestionnaires();
				model.addAttribute("questionnaires",questionnaires);
				return "QuestionnaireList";
			}
		
				model.addAttribute("info","添加失败");
			
			return "QuestionnaireAdd";
		}
	 @RequestMapping("/QuestionnaireAdd1.do")
		public String stadiumAdd1()
		{
			return "QuestionnaireAdd";
		}

}
