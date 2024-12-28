package com.example.EcomShop.Models;

import jakarta.validation.constraints.NotNull;
import java.util.List;

public class OrderRequest {

    @NotNull
    private Long userId;

    @NotNull
    private String orderDate;

    @NotNull
    private List<Long> productIds;

    @NotNull
    private List<Integer> quantities;

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

    public List<Long> getProductIds() {
        return productIds;
    }

    public void setProductIds(List<Long> productIds) {
        this.productIds = productIds;
    }

    public List<Integer> getQuantities() {
        return quantities;
    }

    public void setQuantities(List<Integer> quantities) {
        this.quantities = quantities;
    }
}