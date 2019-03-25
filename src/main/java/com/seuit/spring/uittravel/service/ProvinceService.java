package com.seuit.spring.uittravel.service;

import com.seuit.spring.uittravel.entity.Province;

import javassist.NotFoundException;

public interface ProvinceService {
	Province getProvinceById(Integer id) throws NotFoundException;
}
