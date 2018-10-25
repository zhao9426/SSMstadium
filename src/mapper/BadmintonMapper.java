package mapper;

import java.util.List;

import entity.Badminton;



public interface BadmintonMapper {
	
	public List<Badminton> getBadmintons();
	public int addBadminton(Badminton badminton);
	public Badminton findById1(String id);
	public int updateBadminton(Badminton badminton);
	public int deleteBadminton(String id);
}
