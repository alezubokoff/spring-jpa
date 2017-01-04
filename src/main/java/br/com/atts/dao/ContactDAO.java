package br.com.atts.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.atts.model.Contact;

@Repository
public class ContactDAO implements DAO<Contact> {
	
	@PersistenceContext
	private EntityManager manager;

	public void save(Contact t) {
		manager.persist(t);
	}

	public void remove(Contact t) {
		manager.remove(t);
	}

	public void update(Contact t) {
		manager.merge(t);
	}

	public Contact findById(Integer id) {
		return manager.find(Contact.class, id);
	}

	public List<Contact> findAll() {
		return manager.createQuery("select c from Contact c", Contact.class).getResultList();
	}

}
