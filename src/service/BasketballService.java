package service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import entity.Basketball;
import mapper.BasketballMapper;

@Service
public class BasketballService {
	
	@Resource
	BasketballMapper basketballMapper;
	
	
	public BasketballMapper getBasketballMapper() {
		return basketballMapper;
	}

	public void setBasketballMapper(BasketballMapper basketballMapper) {
		this.basketballMapper = basketballMapper;
	}

	/*
	 * 获取场地信息
	 */
	public List<Basketball> getBasketballs() {
		return basketballMapper.getBasketballs();
	}

	/*
	 * 添加场地
	 */
	public boolean addBasketball(Basketball basketball){
		basketballMapper.addBasketball(basketball);
		return true;
	}	
	public Basketball findById(String id){
		return basketballMapper.findById1(id);
	}	
	public boolean updateBasketball(Basketball basketball){
		return basketballMapper.updateBasketball(basketball)>0;
	}	
	public boolean deleteBasketball(String id){
		return basketballMapper.deleteBasketball(id)>0;
	}	
}
