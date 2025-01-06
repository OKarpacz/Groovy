package com.example.EcomShop.Services;

import com.example.EcomShop.Models.OrderItem;
import com.example.EcomShop.Repositories.OrderItemRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


import java.util.List;

@Service
public class OrderItemService {
    private static final Logger logger = LoggerFactory.getLogger(OrderItemService.class);

    @Autowired
    private OrderItemRepo orderItemRepo;

    public List<OrderItem> getAllOrderItems() {
        logger.info("Fetching all order items");
        return orderItemRepo.findAll();
    }

    public OrderItem getOrderItemById(Long id) {
        logger.info("Fetching order item by ID: {}", id);
        return orderItemRepo.findById(id).orElse(null);
    }

    public OrderItem createOrderItem(Long orderId, Long productId, Integer quantity) {
        OrderItem orderItem = new OrderItem();
        return orderItemRepo.save(orderItem);
    }

    public void deleteOrderItem(Long id) {
        logger.info("Deleting order item with ID: {}", id);
        orderItemRepo.deleteById(id);
    }
}