package springGain.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import springGain.dao.Raffle_Dao;
import springGain.vo.Raffle;

@Service
public class Raffle_Service {
	
	@Autowired
	private Raffle_Dao dao;
	
	public List<Raffle> getRafList(){
		return dao.getRafList();
	}
	
	public void insertRaffle(Raffle ins) {
		dao.insertRaffle(ins);
	}
	
}
