package com.skilldistillery.showers.data;

import javax.persistence.EntityManager;
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
	public Shower findById(int id) {

		
		System.out.println(em.find(Shower.class, id));
		return em.find(Shower.class, id);
	}

}
