package com.example.EcomShop.Services;

import com.example.EcomShop.Models.CustomerOrder;
import com.example.EcomShop.Models.OrderItem;
import com.example.EcomShop.Models.Product;
import com.example.EcomShop.Models.User;
import com.example.EcomShop.Repositories.CustomerOrderRepo;
import com.example.EcomShop.Repositories.OrderItemRepo;
import com.example.EcomShop.Repositories.ProductRepo;
import com.example.EcomShop.Repositories.UserRepo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CustomerOrderService {

    private final CustomerOrderRepo customerOrderRepo;
    private final OrderItemRepo orderItemRepo;
    private final ProductRepo productRepo;
    private final UserRepo userRepo;

    public CustomerOrderService(CustomerOrderRepo customerOrderRepo, OrderItemRepo orderItemRepo,
                                ProductRepo productRepo, UserRepo userRepo) {
        this.customerOrderRepo = customerOrderRepo;
        this.orderItemRepo = orderItemRepo;
        this.productRepo = productRepo;
        this.userRepo = userRepo;
    }

    public List<CustomerOrder> getAllOrders() {
        return customerOrderRepo.findAll();
    }

    public CustomerOrder getOrderById(Long id) {
        return customerOrderRepo.findById(id)
                .orElseThrow(() -> new RuntimeException("Order not found with ID: " + id));
    }

    @Transactional
    public CustomerOrder createOrderWithProducts(Long userId, String orderDate, List<Long> productIds, List<Integer> quantities) {
        if (productIds == null || productIds.isEmpty() || quantities == null || quantities.isEmpty()) {
            throw new RuntimeException("Product IDs and quantities cannot be null or empty.");
        }

        User user = userRepo.findById(userId)
                .orElseThrow(() -> new RuntimeException("User not found with ID: " + userId));

        CustomerOrder customerOrder = new CustomerOrder();
        customerOrder.setUser(user);
        customerOrder.setOrderDate(orderDate);
        customerOrder = customerOrderRepo.save(customerOrder);

        for (int i = 0; i < productIds.size(); i++) {
            addProductToOrder(customerOrder, productIds.get(i), quantities.get(i));
        }

        return customerOrder;
    }

    private void addProductToOrder(CustomerOrder order, Long productId, Integer quantity) {
        Product product = productRepo.findById(productId)
                .orElseThrow(() -> new RuntimeException("Product not found with ID: " + productId));

        if (product.getQuantity() < quantity) {
            throw new RuntimeException("Insufficient stock for product ID: " + productId);
        }

        product.setQuantity(product.getQuantity() - quantity);
        productRepo.save(product);

        OrderItem orderItem = new OrderItem(order, product, quantity);
        orderItemRepo.save(orderItem);
    }

    public void deleteOrder(Long id) {
        CustomerOrder order = customerOrderRepo.findById(id)
                .orElseThrow(() -> new RuntimeException("Order not found with ID: " + id));
        customerOrderRepo.delete(order);
    }
}