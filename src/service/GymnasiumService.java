package service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import entity.Gymnasium;
import mapper.GymnasiumMapper;

@Service
public class GymnasiumService {
	
	@Resource
	GymnasiumMapper gymnasiumMapper;
	
	
	public GymnasiumMapper getGymnasiumMapper() {
		return gymnasiumMapper;
	}

	public void setGymnasiumMapper(GymnasiumMapper gymnasiumMapper) {
		this.gymnasiumMapper = gymnasiumMapper;
	}

	/*
	 * 获取场地信息
	 */
	public List<Gymnasium> getGymnasiums() {
		return gymnasiumMapper.getGymnasiums();
	}

	/*
	 * 添加场地
	 */
	public boolean addGymnasium(Gymnasium gymnasium){
		gymnasiumMapper.addGymnasium(gymnasium);
		return true;
	}	
	public Gymnasium findById(String id){
		return gymnasiumMapper.findById1(id);
	}	
	public boolean updateGymnasium(Gymnasium gymnasium){
		return gymnasiumMapper.updateGymnasium(gymnasium)>0;
	}	
	public boolean deleteGymnasium(String id){
		return gymnasiumMapper.deleteGymnasium(id)>0;
	}	
}
