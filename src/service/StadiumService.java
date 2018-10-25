package service;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import entity.Stadium;
import mapper.StadiumMapper;

@Service
public class StadiumService {
	
	@Resource
	StadiumMapper stadiumMapper;
	
	
	public StadiumMapper getStadiumMapper() {
		return stadiumMapper;
	}

	public void setStadiumMapper(StadiumMapper stadiumMapper) {
		this.stadiumMapper = stadiumMapper;
	}

	/*
	 * 获取场地信息
	 */
	public List<Stadium> getStadiums() {
		return stadiumMapper.getStadiums();
	}

	/*
	 * 添加场地
	 */
	public boolean addStadium(Stadium stadium){
		stadiumMapper.addStadium(stadium);
		return true;
	}	
	public Stadium findById(String id){
		return stadiumMapper.findById(id);
	}	
	public boolean updateStadium(Stadium stadium){
		return stadiumMapper.updateStadium(stadium)>0;
	}	
	public boolean deleteStadium(String id){
		return stadiumMapper.deleteStadium(id)>0;
	}	
}
