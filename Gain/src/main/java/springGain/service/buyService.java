package springGain.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springGain.dao.BuyMemberDao;
import springGain.vo.GainMember;

@Service
public class buyService {

	@Autowired(required = false)
	private BuyMemberDao dao;
	public List<GainMember> getCouponList(GainMember id){
		if(sch.getId()==null) sch.setId("");
		if(sch.getAddress()==null) sch.setAddress("");
		if(sch.getPhonenum()==null) sch.setPhonenum("");
		return dao.getGainMemberList(id);
	}
}
