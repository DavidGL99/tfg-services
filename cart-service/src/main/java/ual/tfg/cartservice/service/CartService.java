package ual.tfg.cartservice.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import ual.tfg.cartservice.dto.CartRequestDto;
import ual.tfg.cartservice.dto.CartResponseDto;
import ual.tfg.cartservice.dto.ProductDto;
import ual.tfg.cartservice.entity.Cart;
import ual.tfg.cartservice.feignclients.ProductFeignClient;
import ual.tfg.cartservice.repository.CartRepository;
import ual.tfg.cartservice.utility.Mapper;

import java.util.ArrayList;
import java.util.List;

@Service
public class CartService {

    @Autowired
    CartRepository cartRepository;
    @Autowired
    ProductFeignClient productFeignClient;



    public Cart save(CartRequestDto dto) {
        Cart cart = Mapper.modelMapper().map(dto, Cart.class);
        Cart old = cartRepository.findByUserIdAndProductId(dto.getUserId(), dto.getProductId()).orElse(null);
        if(old!=null){
            old.setCantidad(cart.getCantidad() + old.getCantidad());
            return cartRepository.save(old);
        }
        return cartRepository.save(cart);
    }

    public List<CartResponseDto> getAllById(String id){
        List<Cart> cartList = cartRepository.findAllByUserId(id);
        List<CartResponseDto> response = new ArrayList<>();
        for(Cart cart : cartList){
            response.add(new CartResponseDto(cart.getUserId(), getProduct(cart.getProductId()), cart.getCantidad()));
        }
        return  response;
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


    public void deleteByUser(String userId){
        cartRepository.deleteAllByUserId(userId);
    }

    public void deleteByProduct(String productId){
        cartRepository.deleteAllByProductId(productId);
    }

}
