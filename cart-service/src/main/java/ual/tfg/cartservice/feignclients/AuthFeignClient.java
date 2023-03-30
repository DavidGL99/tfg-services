package ual.tfg.cartservice.feignclients;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import ual.tfg.cartservice.dto.TokenDto;

@FeignClient(name = "auth-service", url = "http://localhost:8080")
public interface AuthFeignClient {

    @PostMapping("/auth/validate")
    ResponseEntity<TokenDto> validate(@RequestBody TokenDto token);
}
