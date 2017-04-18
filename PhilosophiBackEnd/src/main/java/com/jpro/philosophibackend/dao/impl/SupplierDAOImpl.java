package com.jpro.philosophibackend.dao.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.jpro.philosophibackend.dao.SupplierDAO;
import com.jpro.philosophibackend.domain.Supplier;

@EnableTransactionManagement
@Repository("supplierDAO")
public class SupplierDAOImpl implements SupplierDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public SupplierDAOImpl(SessionFactory sessionFactory) {
		
		this.sessionFactory=sessionFactory;		
	}

	@Transactional
	public List<Supplier> getAllSupplier() {
		return sessionFactory.getCurrentSession().createQuery("from Supplier").list();
	}

	@Transactional
	public boolean saveSupplier(Supplier supplier) {
		try
		{
		sessionFactory.getCurrentSession().save(supplier);
		return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}

	@Transactional
	public boolean updateSupplier(Supplier supplier) {
		try
		{
		sessionFactory.getCurrentSession().update(supplier);
		return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}

	@Transactional
	public boolean deleteSupplier(Supplier supplier) {
		try
		{
		sessionFactory.getCurrentSession().delete(supplier);
		return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}	
	}

	@Transactional
	public boolean deleteSupplier(String supplierId) {
		try {
			sessionFactory.getCurrentSession().delete(getSupplierById(supplierId));
			return true;
		} 
		catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Transactional
	public Supplier getSupplierById(String supplierId) {
		return (Supplier) sessionFactory.getCurrentSession().createQuery("from Supplier where supplierId ='"+ supplierId +"'" ).uniqueResult();
	}

	@Transactional
	public Supplier getSupplierByName(String supplierName) {
		return (Supplier) sessionFactory.getCurrentSession().createQuery("from Supplier where supplierName ='"+ supplierName +"'" ).list().get(0);
	}

}
