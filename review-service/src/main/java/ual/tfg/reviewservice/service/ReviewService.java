package ual.tfg.reviewservice.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import ual.tfg.reviewservice.dto.ProductDto;
import ual.tfg.reviewservice.dto.ReviewMediaResponseDto;
import ual.tfg.reviewservice.dto.ReviewRequestDto;
import ual.tfg.reviewservice.entity.Review;
import ual.tfg.reviewservice.feignclients.ProductFeignClient;
import ual.tfg.reviewservice.repository.ReviewRepository;
import ual.tfg.reviewservice.utility.Mapper;

import java.util.*;
import java.util.stream.Collectors;

@Service
public class ReviewService {

    @Autowired
    ReviewRepository reviewRepository;

    @Autowired
    ProductFeignClient productFeignClient;

    public Review save(ReviewRequestDto dto) {
        Review review = Mapper.modelMapper().map(dto, Review.class);
        return reviewRepository.save(review);
    }

    public List<Review> findById(Long id) {
        return reviewRepository.findAllByProductId(id);
    }

    public List<ReviewMediaResponseDto> bestReviewed() {
        List<Review> reviews = reviewRepository.findAll();
        Map<Long, Integer> idReview = new HashMap<>();
        double media = 0;
        for (Review r : reviews) {
            if (!idReview.containsKey(r.getProductId())) {
                idReview.put(r.getProductId(), r.getNota());
            } else {
                idReview.put(r.getProductId(), r.getNota() + idReview.get(r.getProductId()));
            }
        }

        List<ReviewMediaResponseDto> response = new ArrayList<>();
        for (Map.Entry<Long, Integer> entry : idReview.entrySet()) {
            int size = reviewRepository.findAllByProductId(entry.getKey()).size();
            response.add(new ReviewMediaResponseDto(getProduct(entry.getKey()), entry.getValue() / size, size));
        }


        return response.stream()
                .sorted(Comparator.comparingInt(ReviewMediaResponseDto::getMedia).reversed())
                .limit(10)
                .collect(Collectors.toList());
    }

    public ProductDto getProduct(Long productId){
        try {
            ProductDto response = productFeignClient.getById(productId).getBody();
            return response;

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
