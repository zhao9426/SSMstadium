package service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import entity.Badminton;
import mapper.BadmintonMapper;

@Service
public class BadmintonService {
	
	@Resource
	BadmintonMapper badmintonMapper;
	
	
	public BadmintonMapper getBadmintonMapper() {
		return badmintonMapper;
	}

	public void setBadmintonMapper(BadmintonMapper badmintonMapper) {
		this.badmintonMapper =badmintonMapper;
	}

	/*
	 * 获取场地信息
	 */
	public List<Badminton> getBadmintons() {
		return badmintonMapper.getBadmintons();
	}

	/*
	 * 添加场地
	 */
	public boolean addBadminton(Badminton badminton){
		badmintonMapper.addBadminton(badminton);
		return true;
	}	
	public Badminton findById(String id){
		return badmintonMapper.findById1(id);
	}	
	public boolean updateBadminton(Badminton badminton){
		return badmintonMapper.updateBadminton(badminton)>0;
	}	
	public boolean deleteBadminton(String id){
		return badmintonMapper.deleteBadminton(id)>0;
	}	
}
