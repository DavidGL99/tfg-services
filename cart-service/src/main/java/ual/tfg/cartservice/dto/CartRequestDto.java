package ual.tfg.cartservice.dto;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class CartRequestDto {
    private String userId;
    private Long productId;
    private Long cantidad;
}
