package springGain.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import springGain.dao.Raffle_Dao;
import springGain.vo.Raffle;


@Service
public class Raffle_Service {
	@Value("${img.upload2}")
	private String upload;
	
	@Autowired
	private Raffle_Dao dao;
	
	public List<Raffle> getRafList(){
		return dao.getRafList();
	}
	
	public void insertRaffle(Raffle ins) {
		dao.insertRaffle(ins);
	}
	
	public List<Raffle> myRaffle(Raffle sch){
		if(sch.getId()==null) sch.setId("");
		return dao.myRaffle(sch);
	}
	
	public String uploadFile(MultipartFile file) {
		String fname = file.getOriginalFilename();
		if(fname!=null && !fname.equals("")) {
			File fObj = new File(upload+fname);
			
			try {
				file.transferTo(fObj); // 필수예외처리 (IO발생)
			} catch (IllegalStateException e) {
				System.out.println("파일업로드 예외1:"+e.getMessage());
			} catch (IOException e) {
				System.out.println("파일업로드 예외2:"+e.getMessage());
			} 
			
		}
		return fname;
	}
	
	public String regRaffle(Raffle ins) {
		String fname = uploadFile(ins.getFile());
		ins.setImgSrc(fname);
		dao.regRaffle(ins);
		return fname;
	}
	

	
}
