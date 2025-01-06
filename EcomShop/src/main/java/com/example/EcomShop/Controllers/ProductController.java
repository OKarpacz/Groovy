package com.example.EcomShop.Controllers;

import com.example.EcomShop.DTO.ProductDTO;
import com.example.EcomShop.Mappers.ProductMapper;
import com.example.EcomShop.Services.ProductService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/products")
public class ProductController {

    @Autowired
    private ProductService productService;

    @Autowired
    private ProductMapper productMapper;

    @GetMapping
    public List<ProductDTO> getAllProducts() {
        return productService.getAllProducts();
    }

    @GetMapping("/{id}")
    public ResponseEntity<ProductDTO> getProductById(@PathVariable Long id) {
        try {
            ProductDTO productDTO = productService.getProductById(id);
            return ResponseEntity.ok(productDTO);
        } catch (RuntimeException e) {
            return ResponseEntity.notFound().build();
        }
    }

    @PostMapping
    public ProductDTO createProduct(@Valid @RequestBody ProductDTO productDTO) {
        return productService.createProduct(productDTO);
    }

    @PutMapping("/{id}")
    public ResponseEntity<ProductDTO> updateProduct(@PathVariable Long id, @RequestBody ProductDTO productDTO) {
        try {
            ProductDTO updatedProductDTO = productService.updateProduct(id, productDTO);
            return ResponseEntity.ok(updatedProductDTO);
        } catch (RuntimeException e) {
            return ResponseEntity.notFound().build();
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteProduct(@PathVariable Long id) {
        productService.deleteProduct(id);
        return ResponseEntity.noContent().build();
    }
}
