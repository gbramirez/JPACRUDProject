package com.skilldistillery.showers.data;

import com.skilldistillery.showers.entities.Shower;

public interface ShowerDAO {
	Shower findById(int id);
	
	public Shower create(Shower shower);
	
	Shower update(int id, Shower shower);
	
	public boolean destroy (int id);
	
	boolean destroy();

}
