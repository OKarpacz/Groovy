package com.example.EcomShop.Services;
import com.example.EcomShop.Models.Product;
import com.example.EcomShop.Repositories.ProductRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {
    @Autowired
    private ProductRepo productRepo;
    public List<Product> getAllProducts(){
        return productRepo.findAll();
    }
    public Product getProductById(Long id){
        return productRepo.findById(id).orElseThrow(()->new RuntimeException("Product not find with ID " + id));
    }
    public Product createProduct(Product product){
        return productRepo.save(product);
    }
    public Product updateProduct(Long id, Product productDetails){
        Product product = getProductById(id);
        product.setName(productDetails.getName());
        product.setPrice(productDetails.getPrice());
        product.setDescription(productDetails.getDescription());
        return productRepo.save(product);
    }
    public void deleteProduct(Long id){
        Product product = getProductById(id);
        productRepo.delete(product);
    }
}
