package mapper;

import java.util.List;
import java.util.Map;

import entity.LoginEntity;

public interface LoginMapper {

public List<Map<String,Object>> LoginInput();
public void regInput(LoginEntity lg);
}
