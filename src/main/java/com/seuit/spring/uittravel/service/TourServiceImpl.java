package com.seuit.spring.uittravel.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seuit.spring.uittravel.entity.Area;
import com.seuit.spring.uittravel.entity.Image;
import com.seuit.spring.uittravel.entity.Province;
import com.seuit.spring.uittravel.entity.Tour;
import com.seuit.spring.uittravel.entity.TourApi;
import com.seuit.spring.uittravel.entity.TourFull;
import com.seuit.spring.uittravel.entity.TourInformation;
import com.seuit.spring.uittravel.repository.AreaRepository;
import com.seuit.spring.uittravel.repository.ProvinceRepository;
import com.seuit.spring.uittravel.repository.TourInforRepository;
import com.seuit.spring.uittravel.repository.TourRepository;

import javassist.NotFoundException;

@Service
public class TourServiceImpl implements TourService {

	@Autowired
	private EntityManagerFactory entityManagerFactory;

	@Autowired
	private TourRepository tourRepository;

	@Autowired
	private TourInforRepository tourInforRepository;

	@Autowired
	private ProvinceRepository provinceRepository;
	
	@Autowired 
	private AreaRepository areaRepository;

	@Override
	@Transactional
	public List<Tour> getAllTour() {
		// TODO Auto-generated method stub
		return tourRepository.findAll();
	}

	@Override
	@Transactional
	public void addTour(TourFull tourFull) throws NotFoundException {
		
		tourFull.setStatus(1);
		// init province
		Optional<Province> province = provinceRepository.findById(tourFull.getProvince());
		province.orElseThrow(() -> new NotFoundException("Cant find Province"));
		// init
		Tour tour = new Tour(tourFull.getName(), tourFull.getImage());
		TourInformation tourInfo = new TourInformation(tourFull.getTitle(), tourFull.getDetail(), tourFull.getPrice(),
				tourFull.getStatus());
		Set<Image> images = new HashSet<Image>();
		Set<TourInformation> listTourInfo = new HashSet<TourInformation>();

		// Set<String> => Set<Image>
		if (tourFull.getImages() != null) {
			for (String imageString : tourFull.getImages()) {
				if (imageString.equals("") == false) {
					images.add(new Image(imageString));
				}
			}
		}

		// TOurInfo - province
		listTourInfo.add(tourInfo);
		province.get().setTourInformation(listTourInfo);
		tourInfo.setProvince(province.get());

		// TourInfo - image
		for (Image image : images) {
			image.setTourInfo(tourInfo);
		}
		tourInfo.setImages(images);

		// Tour - TourInfo
		tourInfo.setTour(tour);
		tour.setTourInfor(tourInfo);

		tourRepository.save(tour);

	}

	@Override
	@Transactional
	public void updateTour(TourFull tourFull) throws NotFoundException {
		// TODO Auto-generated method stub
		Tour tour = findTourById(tourFull.getId());
		TourInformation tourInfo = tour.getTourInfor();
		Province province = tourInfo.getProvince();
		Set<Image> images = tourInfo.getImages();
		Set<Image> imagesTemp = new HashSet<Image>();
		tour.setName(tourFull.getName());
		tour.setImage(tourFull.getImage());
		tourInfo.setDetail(tourFull.getDetail());
		tourInfo.setPrice(tourFull.getPrice());
		tourInfo.setStatus(tourFull.getStatus());
		tourInfo.setTitle(tourFull.getTitle());

		province.setId(tourFull.getProvince());

		if (tourFull.getImages() != null) {
			for (String imageString : tourFull.getImages()) {
				imagesTemp.add(new Image(imageString));
			}

			for (int i = 0; i < 1; i++) {
				for (Image image : images) {
					image.setUrl(tourFull.getImages().get(i));
					i++;
				}
			}
		}

		tourRepository.save(tour);
	}

	@Override
	@Transactional
	public void deleteTour(Integer Id) {
		// TODO Auto-generated method stub
		tourRepository.deleteById(Id);
	}

	@Override
	@Transactional
	public TourFull findTourFullById(Integer Id) throws NotFoundException {
		// TODO Auto-generated method stub
		Optional<Tour> tour = tourRepository.findById(Id);
		tour.orElseThrow(() -> new NotFoundException("Cant find tour"));
		TourInformation tourInfo = tour.get().getTourInfor();

		// set<images> to set<string>
		List<String> images = new ArrayList<String>();
		if (tourInfo.getImages() != null) {
			for (Image image : tourInfo.getImages()) {
				images.add(image.getUrl());
			}
		}

		return new TourFull(tour.get().getId(), tour.get().getName(), tour.get().getImage(), tourInfo.getTitle(),
				tourInfo.getDetail(), images, tourInfo.getPrice(), tourInfo.getStatus(),
				tourInfo.getProvince().getId());
	}

	@Override
	@Transactional
	public TourInformation findTourInforByTourId(Integer Id) throws NotFoundException {
		// TODO Auto-generated method stub
		Optional<Tour> tour = tourRepository.findById(Id);
		tour.orElseThrow(() -> new NotFoundException("Cant find tour"));
		TourInformation tourInfor = tour.get().getTourInfor();
		return tourInfor;
	}

	@Override
	@Transactional
	public Tour findTourById(Integer Id) throws NotFoundException {
		// TODO Auto-generated method stub
		Optional<Tour> tour = tourRepository.findById(Id);
		tour.orElseThrow(() -> new NotFoundException("Cant find tourInfo"));
		return tour.get();
	}

	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<TourApi> getAllTourByAreaId(Integer Id) {
		// TODO Auto-generated method stub
		EntityManager entity = entityManagerFactory.createEntityManager();
		String sql = "select new com.seuit.spring.uittravel.entity.TourApi(t.id,t.name,t.image,tif.price) " + "from Area a " + "inner join Province p on a.id=p.area "
				+ "inner join TourInformation tif on p.id=tif.province " + "inner join Tour t on t.tourInfor=tif.id "
				+ "where a.id=:areaId ORDER BY rand()";
		javax.persistence.Query query = entity.createQuery(sql).setMaxResults(3);
		query.setParameter("areaId", Id);
		return query.getResultList();
	}
	
	

	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	@Transactional
	public Map getAllTourWithArea() throws NotFoundException {
		HashMap mMap = new HashMap();
		for(int i=1;i<=3;i++) {
			String areaNameENG = ""; 
			Optional<Area> area = areaRepository.findById(i);
			area.orElseThrow(()-> new NotFoundException("cant find area"));
			switch (area.get().getName()) {
			case "Miền nam":
				areaNameENG="south";
				break;
			case "Miền trung":
				areaNameENG="central";
				break;
			case "Miền bắc":
				areaNameENG="north";
				break;
			default:
				break;
			}
			mMap.put(areaNameENG, getAllTourByAreaId(i));
		}
		return mMap;
	}

	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<Tour> getAllTourByProvinceId(Integer Id) {
		// TODO Auto-generated method stub
		EntityManager entity = entityManagerFactory.createEntityManager();
		String sql = "select t " + "from Province p " + "inner join TourInformation tif on p.id=tif.province "
				+ "inner join Tour t on t.tourInfor=tif.id " + "where p.id=:provinceId";
		javax.persistence.Query query = entity.createQuery(sql);
		query.setParameter("provinceId", Id);
		return query.getResultList();
	}

	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<Tour> getTopTourOrder() {
		// TODO Auto-generated method stub
		EntityManager entity = entityManagerFactory.createEntityManager();
		String sql = "select new com.seuit.spring.uittravel.entity.TourApi(t.id,t.name,t.image,tif.price) " + "from Order o " + "inner join Tour t on t.id=o.tour.id "
				+ "inner join TourInformation tif on tif.id=t.tourInfor " + "group by o.tour "
				+ "order by count(o.tour) desc";
		javax.persistence.Query query = entity.createQuery(sql).setMaxResults(8);
		return query.getResultList();
	}

	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<Tour> getTourByKeyword(String keyword) {
		EntityManager entity = entityManagerFactory.createEntityManager();
		String sql = "select new com.seuit.spring.uittravel.entity.TourApi(t.id,t.name,t.image,tif.price,tif.detail)"
				+ " from Tour t inner join TourInformation tif on tif.id=t.tourInfor"
				+ " where t.name like :code";
		javax.persistence.Query query = entity.createQuery(sql).setMaxResults(10);
		query.setParameter("code", "%"+keyword+"%");
		return query.getResultList();
	}

	
	
	
}
