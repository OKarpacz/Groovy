package com.example.EcomShop.Mappers;

import com.example.EcomShop.Models.Product;
import com.example.EcomShop.DTO.ProductDTO;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = "spring")
public interface ProductMapper {

    @Mapping(source = "quantity", target = "availableQuantity")
    ProductDTO toDTO(Product product);

    @Mapping(source = "availableQuantity", target = "quantity")
    Product toEntity(ProductDTO productDTO);
}
