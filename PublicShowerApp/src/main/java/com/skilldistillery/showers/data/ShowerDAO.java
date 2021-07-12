package com.skilldistillery.showers.data;

import java.util.List;

import com.skilldistillery.showers.entities.Shower;

public interface ShowerDAO {
	
	public Shower findById(Integer id);
	
	public Shower findByAddress(String address);
	
	public Shower createShower(Shower shower);
	
	Shower update(int id, Shower shower);
	
	public boolean destroy (int id);
	
	boolean destroy();

	Shower updateShower(Shower shower);

	public List<Shower> findAllShowers();

	
	
//	boolean createShower(boolean shower);

	}


