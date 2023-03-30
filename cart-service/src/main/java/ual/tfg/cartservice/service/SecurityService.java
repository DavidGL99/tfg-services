package ual.tfg.cartservice.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ual.tfg.cartservice.dto.TokenDto;
import ual.tfg.cartservice.feignclients.AuthFeignClient;

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

