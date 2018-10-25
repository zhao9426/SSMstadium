package mapper;

import java.util.List;

import entity.Questionnaire;



public interface QuestionnaireMapper {
	
	public List<Questionnaire> getQuestionnaires();
	public int addQuestionnaire(Questionnaire questionnaire);
	public Questionnaire findById1(String qid);
	public int updateQuestionnaire(Questionnaire questionnaire);
	public int deleteQuestionnaire(String qid);
}
