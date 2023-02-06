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
}