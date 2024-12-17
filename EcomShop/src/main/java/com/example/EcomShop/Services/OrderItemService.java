package com.example.EcomShop.Services;

import com.example.EcomShop.Models.OrderItem;
import com.example.EcomShop.Repositories.OrderItemRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderItemService {

    @Autowired
    private OrderItemRepo orderItemRepo;

    public List<OrderItem> getAllOrderItems() {
        return orderItemRepo.findAll();
    }

    public OrderItem getOrderItemById(Long id) {
        return orderItemRepo.findById(id).orElse(null);
    }

    public OrderItem createOrderItem(Long orderId, Long productId, Integer quantity) {
        OrderItem orderItem = new OrderItem();
        return orderItemRepo.save(orderItem);
    }

    public void deleteOrderItem(Long id) {
        orderItemRepo.deleteById(id);
    }
}
