package com.standa.nsdsd;

import java.io.Serializable;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

@Repository
public abstract class HibernateStandaGenericDaoImpl<E, K extends Serializable> implements IStandaGenericDao<E, K> {

	 @Autowired
	    private SessionFactory sessionFactory;
	     
	    protected Class<? extends E> daoType;
	    
	public HibernateStandaGenericDaoImpl() {
			Type t = getClass().getGenericSuperclass();
			ParameterizedType pt = (ParameterizedType) t;
			daoType = (Class) pt.getActualTypeArguments()[0];
		}

	@Override
	public void add(E entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void saveOrUpdate(E entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(E entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void remove(E entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public E find(K key) {
		// TODO Auto-generated method stub
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<E> getAll() {
		return sessionFactory.getCurrentSession().createCriteria(daoType).list();
	}

}
