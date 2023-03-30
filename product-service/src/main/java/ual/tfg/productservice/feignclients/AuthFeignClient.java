package ual.tfg.productservice.feignclients;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import ual.tfg.productservice.dto.TokenDto;

@FeignClient(name = "auth-service")
public interface AuthFeignClient {

    @PostMapping("/auth/validate")
    ResponseEntity<TokenDto> validate(@RequestBody TokenDto token);
}
