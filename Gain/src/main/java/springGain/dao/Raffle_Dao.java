package springGain.dao;

import java.util.List;

import springGain.vo.Raffle;

public interface Raffle_Dao {
	public List<Raffle> getRafList();
	public void insertRaffle(Raffle ins);
}
