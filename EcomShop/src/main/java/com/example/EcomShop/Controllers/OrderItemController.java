package com.example.EcomShop.Controllers;

import com.example.EcomShop.Models.CustomerOrder;
import com.example.EcomShop.Models.OrderItem;
import com.example.EcomShop.Models.OrderRequest;
import com.example.EcomShop.Services.CustomerOrderService;
import com.example.EcomShop.Services.OrderItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


import java.util.List;
import jakarta.validation.Valid;

@RestController
@RequestMapping("/api/order-items")
public class OrderItemController {

    @Autowired
    private OrderItemService orderItemService;

    @Autowired
    private CustomerOrderService customerOrderService;
    @GetMapping
    public List<OrderItem> getAllOrderItems() {
        return orderItemService.getAllOrderItems();
    }

    @PostMapping
    public ResponseEntity<CustomerOrder> createOrder(@RequestBody OrderRequest orderRequest) {
        CustomerOrder customerOrder = customerOrderService.createOrderWithProducts(
                orderRequest.getUserId(),
                orderRequest.getOrderDate(),
                orderRequest.getProductIds(),
                orderRequest.getQuantities()
        );

        return ResponseEntity.ok(customerOrder);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteOrderItem(@PathVariable Long id) {
        orderItemService.deleteOrderItem(id);
        return ResponseEntity.noContent().build();
    }
}
