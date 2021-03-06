package com.dobbypos.model.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.dobbypos.model.dao.CheckDao;
import com.dobbypos.model.dto.Balance;
import com.dobbypos.model.dto.Menu;
import com.dobbypos.model.dto.Orders;


@Service("checkService")
public class CheckServiceImpl implements CheckService {
	
	@Autowired
	@Qualifier("checkDao")
	private CheckDao checkDao;

	public void init() {
		System.out.println("init method is called");
	}
	
	public void destroy() {
		System.out.println("destroy method is called");
	}

	@Override
	public List<Balance> getBalances() {
		System.out.println("ServiceImpl");
		return checkDao.getBalances();
	}

	

	
	

	@Override
	public List<Menu> getMenuByDaySell(String todayDate, String storeCode) {
		// TODO Auto-generated method stub
		return checkDao.selectMenuByDaySell(todayDate, storeCode);
	}

	@Override
	public List<Menu> getMenuByPeriodSell(String startday, String endday, String storeCode) {
		// TODO Auto-generated method stub
		return checkDao.selectMenuByPeriodSell(startday, endday, storeCode);
	}

	

	@Override
	public List<Menu> getMenuByCustomer(int customerNo, String storeCode, String startday, String endday) {
		// TODO Auto-generated method stub
		return checkDao.selectMenuByCustomer(customerNo, storeCode, startday, endday);
	}

	@Override
	public String getFirstOrderDate(int customerNo) {
		// TODO Auto-generated method stub
		return checkDao.selectFirstOrderDate(customerNo);
	}
	
	@Override
	public List<Balance> getBalancesbyPeriod(String startday, String endday) {
		
		return checkDao.getBalancebyPeriod(startday, endday);
	}

	@Override
	public List<Balance> getBalancesbyPeriod2(String startday, String endday, String storeCode) {
		
		return checkDao.getBalancebyPeriod2(startday, endday, storeCode);
	}
	
	@Override
	public List<Balance> getBalancesbyPeriodAndPlus(String startday, String endday) {
		
		return checkDao.getBalancebyPeriodAndPlus(startday, endday);
	}

	@Override
	public List<Balance> getBalancesbyPeriodAndMinus(String startday, String endday) {
		
		return checkDao.getBalancebyPeriodAndMinus(startday, endday);
	}

	@Override
	public List<Balance> getBalancesbyPeriodAndPlus2(String startday, String endday, String storeCode) {
		
		return checkDao.getBalancebyPeriodAndPlus2(startday, endday, storeCode);
	}

	@Override
	public List<Balance> getBalancesbyPeriodAndMinus2(String startday, String endday, String storeCode) {
		
		return checkDao.getBalancebyPeriodAndMinus2(startday, endday, storeCode);
	}
	

	@Override
	public Balance getBalanceByNo2(Balance balance3) {
		
		return checkDao.getBalanceByNo2(balance3);
	}

	@Override
	public Balance getBalanceByNo(int balanceNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Orders> getOrdersByPayType(String startday, String endday, String storeCode) {
		// TODO Auto-generated method stub
		return checkDao.selectOrdersByPayType(startday, endday, storeCode);
	}
	
//	public List<Balance> getBalances() {
//		System.out.println("getBalances");
//		return checkDao.getBalances();
//	}
	

	/*@Autowired
	@Qualifier("employeeDao")
	private EmployeeDao employeeDao;*/

//	@Override
//	public Employee searchEmployeeByLogin(String hqCode, String storeCode, String employeeId, String passwd) {
//		Employee employee = null;
//		// store table에서 hqCode, storeCode를 조회  -> 없으면  null return 
//		
//		// employee table에서 storeCode, employeeId, passwd를  조회 
//
//		 employee = employeeDao.selectEmployeeByCodeAndIdAndPw( hqCode,  storeCode,  employeeId,  passwd);
//		
//		return employee;
//	}

}
