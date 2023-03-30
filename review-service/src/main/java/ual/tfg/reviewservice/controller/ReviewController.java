package ual.tfg.reviewservice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import ual.tfg.reviewservice.dto.ReviewRequestDto;
import ual.tfg.reviewservice.service.ReviewService;
import ual.tfg.reviewservice.service.SecurityService;

@Controller
@RequestMapping("/review")
public class ReviewController {

    @Autowired
    private ReviewService reviewService;
    @Autowired
    private SecurityService securityService;

    @PostMapping("/save")
    private ResponseEntity saveReview(@RequestBody ReviewRequestDto review, @RequestHeader("Authorization") String token) {
        if (!securityService.validate(token.split("Bearer")[1])) {
            return new ResponseEntity<>(HttpStatus.UNAUTHORIZED);
        }
        return ResponseEntity.ok(reviewService.save(review));
    }

    @GetMapping("/id/{id}")
    private ResponseEntity getReview(@PathVariable("id") Long id){
        return ResponseEntity.ok(reviewService.findById(id));
    }

    @GetMapping("/best")
    private ResponseEntity getBestReviews(){
        return ResponseEntity.ok(reviewService.bestReviewed());
    }
}
