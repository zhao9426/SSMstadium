package mapper;

import java.util.List;
import entity.Stadium;


public interface StadiumMapper {
	public List<Stadium> getStadiums(); 
	public int addStadium(Stadium stadium);
	public Stadium findById(String id);
	public int updateStadium(Stadium stadium);
	public int deleteStadium(String id);
}
