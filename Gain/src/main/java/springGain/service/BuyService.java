package springGain.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springGain.dao.BuyMemberDao;
import springGain.vo.GainMember;

@Service
public class BuyService {

	@Autowired(required = false)
	private BuyMemberDao dao;
	
	public GainMember getGainMemberList(String id) {
		
		return dao.getGainMemberList(id);
	}
	
}
