package ual.tfg.authservice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import ual.tfg.authservice.dto.TokenDto;
import ual.tfg.authservice.dto.UserDto;
import ual.tfg.authservice.entity.User;
import ual.tfg.authservice.service.UserService;

@RestController
@RequestMapping("/auth")
public class AuthUserController {

    @Autowired
    UserService userService;

    @PostMapping("/login")
    public ResponseEntity<UserDto> login(@RequestBody UserDto dto){
        TokenDto tokenDto = userService.login(dto);
        if(tokenDto == null)
            return ResponseEntity.badRequest().build();

        User user = userService.findByEmail(dto.getEmail());

        return ResponseEntity.ok(UserDto.builder()
                        .email(user.getEmail())
                        .name(user.getName())
                        .lastnames(user.getLastnames())
                        .token(tokenDto.getToken())
                .build());
    }

    @PostMapping("/validate")
    public ResponseEntity<TokenDto> validate(@RequestBody TokenDto token){
        TokenDto tokenDto = userService.validate(token.getToken());
        if(tokenDto == null)
            return new ResponseEntity<>(new TokenDto(null), HttpStatus.UNAUTHORIZED);
        return ResponseEntity.ok(tokenDto);
    }

    @PostMapping("/create")
    public ResponseEntity<UserDto> create(@RequestBody UserDto dto){
        User user = userService.save(dto);
        if(user == null)
            return ResponseEntity.badRequest().build();
        TokenDto tokenDto =userService.login(dto);

        return ResponseEntity.ok(UserDto.builder()
                .email(user.getEmail())
                .name(user.getName())
                .lastnames(user.getLastnames())
                .token(tokenDto.getToken())
                .build());
    }
}
