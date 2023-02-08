package springGain.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springGain.dao.QnA_Dao;
import springGain.vo.QnA;

@Service
public class QnA_Service {
	
	@Autowired
	private QnA_Dao dao;
	public List<QnA> memQnAList(QnA sch){
		if(sch.getId()==null) sch.setId("");
		return dao.memQnAList(sch);
	}
	
	public void insertQnA(QnA ins) {
		dao.insertQnA(ins);
	}
	
	public List<QnA> getQnAList(QnA sch){
		if(sch.getId()==null) sch.setId("");
		return dao.getQnAList(sch);
	}
	
	public void uptReply(QnA upt) {
		dao.uptReply(upt);
	}
}
