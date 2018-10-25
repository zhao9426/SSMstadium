package service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import entity.Questionnaire;
import mapper.QuestionnaireMapper;

@Service
public class QuestionnaireService {
	
	@Resource
	QuestionnaireMapper questionnaireMapper;
	
	
	public QuestionnaireMapper getQuestionnaireMapper() {
		return questionnaireMapper;
	}

	public void setQuestionnaireMapper(QuestionnaireMapper questionnaireMapper) {
		this.questionnaireMapper = questionnaireMapper;
	}

	/*
	 * 获取场地信息
	 */
	public List<Questionnaire> getQuestionnaires() {
		return questionnaireMapper.getQuestionnaires();
	}

	/*
	 * 添加场地
	 */
	public boolean addQuestionnaire(Questionnaire questionnaire){
		questionnaireMapper.addQuestionnaire(questionnaire);
		return true;
	}	
	public Questionnaire findById(String qid){
		return questionnaireMapper.findById1(qid);
	}	
	public boolean updateQuestionnaire(Questionnaire questionnaire){
		return questionnaireMapper.updateQuestionnaire(questionnaire)>0;
	}	
	public boolean deleteQuestionnaire(String qid){
		return questionnaireMapper.deleteQuestionnaire(qid)>0;
	}	
}
