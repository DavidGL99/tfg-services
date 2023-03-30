package ual.tfg.productservice.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import ual.tfg.productservice.dto.TokenDto;
import ual.tfg.productservice.feignclients.AuthFeignClient;

@Service
public class SecurityService {

    @Autowired
    AuthFeignClient authFeignClient;

    public boolean validate(String jwt){
        try {
            authFeignClient.validate(new TokenDto(jwt));
        } catch (Exception e) {
            return false;
        }
        return true;
    }
}
