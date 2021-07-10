package com.skilldistillery.showers.data;

import com.skilldistillery.showers.entities.Shower;

public interface ShowerDAO {
	Shower findById(int id);
}
