package mapper;

import java.util.List;

import entity.Basketball;



public interface BasketballMapper {
	
	public List<Basketball> getBasketballs();
	public int addBasketball(Basketball basketball);
	public Basketball findById1(String id);
	public int updateBasketball(Basketball Basketball);
	public int deleteBasketball(String id);
}
