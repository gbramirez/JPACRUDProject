package com.skilldistillery.showers.data;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.showers.entities.Shower;

@Service
@Transactional
public class ShowerDAOImpl implements ShowerDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Shower findById(Integer id) {
		
		return em.find(Shower.class, id);
	}

//	@Override
//	public Shower create(Shower shower) {
//		
//		return shower;
//	}

	@Override
	public Shower update(int id, Shower shower) {
		return shower;
	}

	@Override
	public boolean destroy(int id) {
		return false;
	}

	@Override
	public boolean destroy() {
		return false;
	}
//
//	@Override
//	public Shower findByAddress(String address) {
//		return em.find(Shower.class, address);
//	}

	@Override
	public Shower createShower(Shower shower) {
		em.persist(shower);
		return shower;
	}

@Override
public Shower findByAddress(String address) {
	// TODO Auto-generated method stub
	return null;
}

//	@Override
//	public boolean createShower(Shower shower) {
//		// TODO Auto-generated method stub
//		return false;
//	}

}
