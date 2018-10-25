package service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import entity.Football;
import mapper.FootballMapper;

@Service
public class FootballService {
	
	@Resource
	FootballMapper footballMapper;
	
	
	public FootballMapper getFootballMapper() {
		return footballMapper;
	}

	public void setFootballMapper(FootballMapper footballMapper) {
		this.footballMapper = footballMapper;
	}

	/*
	 * 获取场地信息
	 */
	public List<Football> getFootballs() {
		return footballMapper.getFootballs();
	}

	/*
	 * 添加场地
	 */
	public boolean addFootball(Football football){
		footballMapper.addFootball(football);
		return true;
	}	
	public Football findById(String id){
		return footballMapper.findById1(id);
	}	
	public boolean updateFootball(Football football){
		return footballMapper.updateFootball(football)>0;
	}	
	public boolean deleteFootball(String id){
		return footballMapper.deleteFootball(id)>0;
	}	
}
