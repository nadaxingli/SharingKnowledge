package com.standa.nsdsd;

import java.util.List;

public interface IStandaGenericDao<E, K> {
	public void add(E entity) ;
    public void saveOrUpdate(E entity) ;
    public void update(E entity) ;
    public void remove(E entity);
    public E find(K key);
    public List<E> getAll() ;
}
