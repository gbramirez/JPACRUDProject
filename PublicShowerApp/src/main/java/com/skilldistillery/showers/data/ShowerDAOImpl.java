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
	private EntityManagerFactory emf = Persistence.createEntityManagerFactory("PublicShowerPU");
	@PersistenceContext
	private EntityManager em;

	@Override
	public Shower findById(int id) {

		System.out.println(em.find(Shower.class, id));
		return em.find(Shower.class, id);
	}

	@Override
	public Shower create(Shower shower) {
//		EntityManager em = emf.createEntityManager();
		
		
		
		return shower;
	}

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

}
