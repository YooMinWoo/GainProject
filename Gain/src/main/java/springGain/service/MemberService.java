package springGain.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springGain.dao.MemberDao;
import springGain.vo.Member;


@Service
public class MemberService {
   @Autowired
   private MemberDao dao;
   
   	public List<Member> getMemList(){
   		return dao.getMemList();
   	};
}