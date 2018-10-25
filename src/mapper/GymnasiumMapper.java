package mapper;

import java.util.List;

import entity.Gymnasium;



public interface GymnasiumMapper {
	
	public List<Gymnasium> getGymnasiums();
	public int addGymnasium(Gymnasium gymnasium);
	public Gymnasium findById1(String id);
	public int updateGymnasium(Gymnasium gymnasium);
	public int deleteGymnasium(String id);
}
