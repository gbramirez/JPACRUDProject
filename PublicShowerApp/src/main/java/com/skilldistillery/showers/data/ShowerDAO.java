package com.skilldistillery.showers.data;

import com.skilldistillery.showers.entities.Shower;

public interface ShowerDAO {
	public Shower findById(Integer id);
	
	public Shower findByAddress(String address);
	
	public Shower createShower(Shower shower);
	
	Shower update(int id, Shower shower);
	
	public boolean destroy (int id);
	
	boolean destroy();

//	boolean createShower(boolean shower);

	}


