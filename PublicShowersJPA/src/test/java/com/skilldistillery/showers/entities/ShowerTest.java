package com.skilldistillery.showers.entities;


import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class ShowerTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private Shower shower;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf= Persistence.createEntityManagerFactory("PublicShowerPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		shower = em.find(Shower.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		shower = null;
	}

	@Test
	void test() {
		assertNotNull(shower);
		assertEquals("Pueblo", shower.getCity());
	}

}
