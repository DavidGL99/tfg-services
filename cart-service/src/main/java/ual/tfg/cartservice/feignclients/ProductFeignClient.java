package ual.tfg.cartservice.feignclients;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ual.tfg.cartservice.dto.ProductDto;

@FeignClient(name = "product-service")
public interface ProductFeignClient {

    @GetMapping("/product")
    public ResponseEntity<ProductDto> getById(@RequestParam("id") Long id);
}
