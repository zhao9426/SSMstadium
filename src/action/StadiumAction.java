package action;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import entity.Stadium;
import service.StadiumService;




@Controller
public class StadiumAction {
	@Autowired
	private StadiumService stadiumService;

	public StadiumService getStadiumService() {
		return stadiumService;
	}

	public void setStadiumService(StadiumService stadiumService) {
		this.stadiumService = stadiumService;
	}
	
	@RequestMapping("/stadiumAddView")
	public ModelAndView addView(){
		return new ModelAndView("stadiumAdd");		
	}
	
	@RequestMapping("/stadiumAdd.do")
	public ModelAndView studentAdd(@RequestParam("photo") MultipartFile  photo,String id,String name,String time,String area,Float price,HttpServletRequest request){

		Stadium stadium = new Stadium();
		stadium.setId(id);
		stadium.setName(name);
		stadium.setTime(time);
		stadium.setArea(area);
		stadium.setPrice(price);
		ServletContext application = request.getServletContext();
		String realPath = application.getRealPath("/photo/");
		int index = photo.getOriginalFilename().lastIndexOf(".");
		String suffix = photo.getOriginalFilename().substring(index+1);
		String fileName = realPath+File.separator+id+"."+suffix;
		
		// 存文件到photo中
		try {
			photo.transferTo(new File(fileName));
		} catch (Exception e) {
			e.printStackTrace();
		} 
		stadium.setPhotoPath(suffix);

		boolean ok = stadiumService.addStadium(stadium);
		Map<String,Object> model = new HashMap<String,Object>();
		if(ok){
			List<Stadium> stadiums = stadiumService.getStadiums();
			model.put("stadiums",stadiums);
			return new ModelAndView("stadiumList",model);
		}else{
			model.put("info","添加失败");
			return new ModelAndView("stadiumAdd",model);		
		}
	}
	
	/*
	 * 更新界面
	 */
	@RequestMapping("/stadiumUpdateView.do")
	public ModelAndView updateView(String id){
		Stadium stadium = stadiumService.findById(id);
		Map<String,Object> model = new HashMap<String,Object>();
		model.put("stadium",stadium);
		return new ModelAndView("stadiumUpdate",model);
	}

	/*
	 * 更新功能
	 */
	@RequestMapping("/stadiumUpdate.do")
	public ModelAndView updateView(Stadium stadium){
		boolean ok = stadiumService.updateStadium(stadium);
		Map<String,Object> model = new HashMap<String,Object>();
		List<Stadium> stadiums = stadiumService.getStadiums();
		model.put("stadiums",stadiums);
		return new ModelAndView("stadiumList",model);
	}
	
	/*
	 * 删除
	 */
	@RequestMapping("/stadiumDelete.do")
	public ModelAndView delete(String id){
		boolean ok = stadiumService.deleteStadium(id);
		Map<String,Object> model = new HashMap<String,Object>();
		List<Stadium> stadiums = stadiumService.getStadiums();
		model.put("stadiums",stadiums);
		return new ModelAndView("stadiumList",model);
	}

	/*
	 * 查看学生列表
	 */
	@RequestMapping("/stadiumList.do")
	public ModelAndView stadiumList(){
		Map<String,Object> model = new HashMap<String,Object>();
		List<Stadium> stadiums = stadiumService.getStadiums();
		model.put("stadiums",stadiums);
		return new ModelAndView("stadiumList",model);
	}
	
	/*
	 * 显示照片
	 */
	@RequestMapping("/stadiumPhoto.do")
	public void studentPhoto(String id,String photoPath,HttpServletRequest request,HttpServletResponse response){
        // 找到文件
		ServletContext application = request.getServletContext();
		String realPath = application.getRealPath("photo/");
		String fileName = realPath+File.separator+id+"."+photoPath;
        File file = new File(fileName);
        if (file.exists()) {
        	byte[] buffer = new byte[1024];
        	FileInputStream fis = null;
        	BufferedInputStream bis = null;
        	try {
        		fis = new FileInputStream(file);
                bis = new BufferedInputStream(fis);
                OutputStream os = response.getOutputStream();
                int i = bis.read(buffer);
                while (i != -1) {
                	os.write(buffer, 0, i);
                	i = bis.read(buffer);
                }
        	}catch(Exception e){
        		e.printStackTrace();
        	}finally{
        		if(bis!=null)
        			try{bis.close();}catch(Exception e){}	
        		if(fis!=null)
        			try{fis.close();}catch(Exception e){}
        	}
        }
	}
}
