package com.example.EcomShop.Services;

import com.example.EcomShop.DTO.ProductDTO;
import com.example.EcomShop.Mappers.ProductMapper;
import com.example.EcomShop.Models.Product;
import com.example.EcomShop.Repositories.ProductRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.stereotype.Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.cache.annotation.Cacheable;


import java.util.List;
import java.util.stream.Collectors;

@Service
public class ProductService {
    private static final Logger logger = LoggerFactory.getLogger(ProductService.class);

    @Autowired
    private ProductRepo productRepo;

    @Autowired
    private ProductMapper productMapper;

    @Cacheable("products")
    public List<ProductDTO> getAllProducts() {
        logger.info("Fetching all products");
        return productRepo.findAll().stream()
                .map(productMapper::toDTO)
                .collect(Collectors.toList());
    }

    @Cacheable(value = "product", key = "#id")
    public ProductDTO getProductById(Long id) {
        logger.info("Fetching product by ID: {}", id);
        Product product = productRepo.findById(id)
                .orElseThrow(() -> new RuntimeException("Product not found with ID " + id));
        return productMapper.toDTO(product);
    }

    @CacheEvict(value = "products", allEntries = true)
    public ProductDTO createProduct(ProductDTO productDTO) {
        Product product = productMapper.toEntity(productDTO);
        Product savedProduct = productRepo.save(product);
        return productMapper.toDTO(savedProduct);
    }

    @CacheEvict(value = "product", key = "#id")
    public ProductDTO updateProduct(Long id, ProductDTO productDTO) {
        Product existingProduct = productRepo.findById(id)
                .orElseThrow(() -> new RuntimeException("Product not found with ID " + id));

        existingProduct.setName(productDTO.getName());
        existingProduct.setPrice(productDTO.getPrice());
        existingProduct.setDescription(productDTO.getDescription());
        existingProduct.setImage(productDTO.getImage());
        existingProduct.setQuantity(productDTO.getAvailableQuantity());

        Product updatedProduct = productRepo.save(existingProduct);
        return productMapper.toDTO(updatedProduct);
    }

    public void deleteProduct(Long id) {
        logger.info("Deleting product with ID: {}", id);
        Product product = productRepo.findById(id)
                .orElseThrow(() -> new RuntimeException("Product not found with ID " + id));
        productRepo.delete(product);
    }
}

