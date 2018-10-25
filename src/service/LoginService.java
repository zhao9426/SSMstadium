package service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.LoginMapper;
import entity.LoginEntity;
@Service
public class LoginService {
	@Autowired
	 LoginMapper loginmapper;
	

	public List<Map<String, Object>> JudgeInput() {
		// TODO Auto-generated method stub
		List<Map<String, Object>> lg=loginmapper.LoginInput();
		return lg;
	}


	public void regInput(LoginEntity lg) {
		// TODO Auto-generated method stub
		loginmapper.regInput(lg);
		
	}
}
