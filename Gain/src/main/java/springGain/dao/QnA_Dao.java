package springGain.dao;

import java.util.List;

import springGain.vo.QnA;

public interface QnA_Dao {
	public List<QnA> memQnAList(String id);
	public void insertQnA(QnA ins);
	public List<QnA> getQnAList(QnA sch);
	public void uptReply(QnA upt);
}