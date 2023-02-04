package sumin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sumin.dao.QnA_Dao;
import sumin.vo.QnA;

@Service
public class QnA_Service {
	
	@Autowired
	private QnA_Dao dao;
	public List<QnA> getQnAList(String id){
		if(id==null)id="himan";
		return dao.getQnAList(id);
	}
}
