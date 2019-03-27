package com.seuit.spring.uittravel.service;

import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seuit.spring.uittravel.entity.Province;
import com.seuit.spring.uittravel.repository.ProvinceRepository;

import javassist.NotFoundException;

@Service
public class ProvinceServiceImpl implements ProvinceService {

	@Autowired
	private ProvinceRepository provinceRepository;
	
	@Override
	@Transactional
	public Province getProvinceById(Integer id) throws NotFoundException {
		// TODO Auto-generated method stub
		Optional<Province> province =  provinceRepository.findById(id);
		province.orElseThrow(() -> new NotFoundException("Cant find Province"));
		return province.get();
	}

}
