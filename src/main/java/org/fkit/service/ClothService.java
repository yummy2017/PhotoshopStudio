package org.fkit.service;

import java.util.List;

import org.fkit.domain.Cloth;

public interface ClothService {
	List<Cloth> getAll();
	List<Cloth> getAlldetail(String clothes);
}
