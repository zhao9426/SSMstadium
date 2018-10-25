package mapper;

import java.util.List;

import entity.Football;



public interface FootballMapper {
	
	public List<Football> getFootballs();
	public int addFootball(Football football);
	public Football findById1(String id);
	public int updateFootball(Football football);
	public int deleteFootball(String id);
}
