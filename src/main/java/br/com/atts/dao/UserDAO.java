package br.com.atts.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.atts.model.User;

@Repository
public class UserDAO implements DAO<User> {
	
	@PersistenceContext
	private EntityManager manager;

	public void save(User t) {
		manager.persist(t);
	}

	public void remove(User t) {
		manager.remove(t);
	}

	public void update(User t) {
		manager.merge(t);
	}

	public User findById(Integer id) {
		return manager.find(User.class, id);
	}

	public List<User> findAll() {
		return manager.createQuery("select u from User u", User.class).getResultList();
	}

}
