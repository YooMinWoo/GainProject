package springGain.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springGain.dao.CouponDao;

@Service
public class CouponService {
	@Autowired(required = false)
	private CouponDao dao;
	
}
