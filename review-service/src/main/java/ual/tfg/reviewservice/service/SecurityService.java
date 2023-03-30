package ual.tfg.reviewservice.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ual.tfg.reviewservice.dto.TokenDto;
import ual.tfg.reviewservice.feignclients.AuthFeignClient;

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
