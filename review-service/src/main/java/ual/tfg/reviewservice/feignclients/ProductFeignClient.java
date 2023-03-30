package ual.tfg.reviewservice.feignclients;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ual.tfg.reviewservice.dto.ProductDto;

@FeignClient(name = "product-service", url = "http://localhost:8081")
public interface ProductFeignClient {

    @GetMapping("/product")
    public ResponseEntity<ProductDto> getById(@RequestParam("id") Long id);
}
