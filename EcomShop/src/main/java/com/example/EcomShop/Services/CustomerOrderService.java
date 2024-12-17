package com.example.EcomShop.Services;

import com.example.EcomShop.Models.CustomerOrder;
import com.example.EcomShop.Models.OrderItem;
import com.example.EcomShop.Models.Product;
import com.example.EcomShop.Models.User;
import com.example.EcomShop.Repositories.CustomerOrderRepo;
import com.example.EcomShop.Repositories.OrderItemRepo;
import com.example.EcomShop.Repositories.ProductRepo;
import com.example.EcomShop.Repositories.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerOrderService {

    private final CustomerOrderRepo customerOrderRepo;
    private final OrderItemRepo orderItemRepo;
    private final ProductRepo productRepo;
    private final UserRepo userRepo;

    private static final String USER_NOT_FOUND = "User not found with id: ";
    private static final String ORDER_NOT_FOUND = "CustomerOrder not found with id: ";
    private static final String PRODUCT_NOT_FOUND = "Product not found with id: ";

    @Autowired
    public CustomerOrderService(CustomerOrderRepo customerOrderRepo,
                                OrderItemRepo orderItemRepo,
                                ProductRepo productRepo,
                                UserRepo userRepo) {
        this.customerOrderRepo = customerOrderRepo;
        this.orderItemRepo = orderItemRepo; // Poprawiona nazwa
        this.productRepo = productRepo;
        this.userRepo = userRepo;
    }
    public CustomerOrder createOrder(Long userId, String orderDate) {
        User user = userRepo.findById(userId)
                .orElseThrow(() -> new RuntimeException(USER_NOT_FOUND + userId));

        CustomerOrder customerOrder = new CustomerOrder();
        customerOrder.setUser(user);
        customerOrder.setOrderDate(orderDate);

        return customerOrderRepo.save(customerOrder);
    }
    public void addProductToOrder(Long orderId, Long productId, Integer quantity) {
        CustomerOrder customerOrder = customerOrderRepo.findById(orderId)
                .orElseThrow(() -> new RuntimeException("CustomerOrder not found with id: " + orderId));

        Product product = productRepo.findById(productId)
                .orElseThrow(() -> new RuntimeException("Product not found with id: " + productId));

        System.out.println("Adding product to order - Order ID: " + orderId + ", Product ID: " + productId + ", Quantity: " + quantity);

        OrderItem orderItem = new OrderItem(customerOrder, product, quantity);
        orderItemRepo.save(orderItem);

        System.out.println("Product added successfully to order.");
    }

    public CustomerOrder createOrderWithProducts(Long userId, String orderDate, List<Long> productIds, List<Integer> quantities) {
        if (productIds == null || productIds.isEmpty() || quantities == null || quantities.isEmpty()) {
            throw new IllegalArgumentException("Product IDs or Quantities cannot be null or empty");
        }

        User user = userRepo.findById(userId)
                .orElseThrow(() -> new RuntimeException("User not found with ID: " + userId));

        CustomerOrder customerOrder = new CustomerOrder();
        customerOrder.setUser(user);
        customerOrder.setOrderDate(orderDate);
        customerOrder = customerOrderRepo.save(customerOrder);

        for (int i = 0; i < productIds.size(); i++) {
            Long productId = productIds.get(i);
            Integer quantity = quantities.get(i);

            Product product = productRepo.findById(productId)
                    .orElseThrow(() -> new RuntimeException("Product not found with ID: " + productId));

            OrderItem orderItem = new OrderItem(customerOrder, product, quantity);
            orderItemRepo.save(orderItem);
        }

        return customerOrder;
    }

    public void deleteOrder(Long id) {
        CustomerOrder customerOrder = customerOrderRepo.findById(id)
                .orElseThrow(() -> new RuntimeException(ORDER_NOT_FOUND + id));
        customerOrderRepo.delete(customerOrder);
    }

    public List<CustomerOrder> getAllOrders() {
        return customerOrderRepo.findAll();
    }

    public CustomerOrder getOrderById(Long id) {
        return customerOrderRepo.findById(id)
                .orElseThrow(() -> new RuntimeException(ORDER_NOT_FOUND + id));
    }
}
