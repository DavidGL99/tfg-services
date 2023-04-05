package ual.tfg.authservice.service;

import ual.tfg.authservice.dto.UserDto;
import ual.tfg.authservice.dto.TokenDto;
import ual.tfg.authservice.entity.User;
import ual.tfg.authservice.repository.UserRepository;
import ual.tfg.authservice.security.JwtProvider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class UserService {

    @Autowired
    UserRepository userRepository;

    @Autowired
    PasswordEncoder passwordEncoder;

    @Autowired
    JwtProvider jwtProvider;

    public User save(UserDto dto) {
        Optional<User> user = userRepository.findByEmail(dto.getEmail());
        if(user.isPresent())
            return null;
        String password = passwordEncoder.encode(dto.getPassword());
        User authUser = new User(
                dto.getName(),
                dto.getLastnames(),
                dto.getEmail(),
                dto.getPassword());
        return userRepository.save(authUser);
    }

    public TokenDto login(UserDto dto) {
        Optional<User> user = userRepository.findByEmail(dto.getEmail());
        if(!user.isPresent())
            return null;
        if(passwordEncoder.matches(dto.getPassword(), passwordEncoder.encode(user.get().getPassword())))
            return new TokenDto(jwtProvider.createToken(user.get()));
        return null;
    }

    public TokenDto validate(String token) {
        if(!jwtProvider.validate(token))
            return null;
        String username = jwtProvider.getUserNameFromToken(token);
        if(!userRepository.findByEmail(username).isPresent())
            return null;
        return new TokenDto(token);
    }

    public List<User> findAll() {
        return userRepository.findAll();
    }

    public User findByEmail(String email) {
        return userRepository.findByEmail(email).orElse(null);
    }
}
