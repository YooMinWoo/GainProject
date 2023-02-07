package springGain.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springGain.dao.GainMemberDao;
import springGain.vo.GainMember;


@Service
public class GainMemberService {
   @Autowired
   private GainMemberDao dao;
   
   	public GainMember getMemList(GainMember gm){
   		return dao.getMemList(gm);
   	};
   	public void insMem(GainMember gm){
   		gm.setAddress(gm.getAddress()+" "+gm.getAddress_detail());
   		dao.insMem(gm);
   	};
   	
   	public GainMember login(GainMember gm) {
   		if(gm.getId()==null) gm.setId("");
   		if(gm.getPass()==null) gm.setPass("");
   		return dao.login(gm);
   	}
   	
}