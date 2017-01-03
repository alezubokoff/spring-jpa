package br.com.atts.dao;

import java.util.List;

public interface DAO<T> {
	
	public void save(T t);
	public void remove(T t);
	public void update(T t);
	public T findById(Integer id);
	public List<T> findAll();

}
