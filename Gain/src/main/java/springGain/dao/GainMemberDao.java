package springGain.dao;

import springGain.vo.GainMember;

public interface GainMemberDao {
   public GainMember getMemList(GainMember gm);
   public void insMem(GainMember gm);
   public void uptMyInfo(GainMember gm);
   public GainMember login(GainMember gm);
}