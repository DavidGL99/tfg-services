package ual.tfg.authservice.dto;

import lombok.*;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Builder
public class UserDto {

    private String email;
    private String password;
    private String name;
    private String lastnames;
    private String token;
}
