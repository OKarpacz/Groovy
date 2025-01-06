package com.example.EcomShop.Mappers;

import com.example.EcomShop.Models.User;
import com.example.EcomShop.DTO.UserDTO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

@Mapper(componentModel = "spring")
public interface UserMapper {
    UserMapper INSTANCE = Mappers.getMapper(UserMapper.class);

    UserDTO toDTO(User user);

    User toEntity(UserDTO userDTO);
}
