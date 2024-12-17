import React, { useState } from 'react';
import axios from 'axios';
import { useNavigate } from 'react-router-dom';
const CartPage = ({ cart, onRemoveFromCart, onIncrementQuantity, onDecrementQuantity, calculateTotalPrice }) => {
    const [loading, setLoading] = useState(false);
    const [error, setError] = useState(null);
    const navigate = useNavigate();

    const handlePlaceOrder = async () => {
        setLoading(true);
        setError(null);

        try {
            const orderData = {
                userId: 1,
                orderDate: new Date().toISOString(),
                productIds: cart.map(item => item.id),
                quantities: cart.map(item => item.quantity)
            };

            const response = await axios.post('http://localhost:8080/api/orders', orderData, {
                headers: { 'Content-Type': 'application/json' }
            });

            if (response.status === 200 || response.status === 201) {
                alert("Order placed successfully!");
                navigate('/payment');
            } else {
                throw new Error(`Unexpected response status: ${response.status}`);
            }
        } catch (error) {
            console.error("There was an error placing the order:", error.response ? error.response.data : error.message);
            setError("Failed to place the order. Please check your network or try again later.");
        } finally {
            setLoading(false);
        }
    };

    return (
        <div className="container mx-auto p-6">
            <h2 className="text-2xl font-semibold mb-4">Your Cart</h2>
            {cart.length === 0 ? (
                <p>Your cart is empty</p>
            ) : (
                <ul>
                    {cart.map((product) => (
                        <li key={product.id} className="mb-4 flex items-center">
                            <div className="flex items-center">
                                <img
                                    src={`/assets/${product.image}`}
                                    alt={product.name}
                                    className="w-16 h-16 object-cover rounded-md mr-4"
                                />
                                <div>
                                    <h3 className="font-bold">{product.name}</h3>
                                    <p>{product.description}</p>
                                    <p className="text-green-600 font-bold">Price: ${product.price}</p>
                                    <div className="flex items-center">
                                        <button
                                            onClick={() => onDecrementQuantity(product.id)}
                                            className="px-4 py-1 bg-gray-300 rounded-l"
                                        >
                                            -
                                        </button>
                                        <span className="px-4 py-1">{product.quantity}</span>
                                        <button
                                            onClick={() => onIncrementQuantity(product.id)}
                                            className="px-4 py-1 bg-gray-300 rounded-r"
                                        >
                                            +
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <button
                                onClick={() => onRemoveFromCart(product.id)}
                                className="ml-auto text-red-500 font-bold text-lg"
                            >
                                X
                            </button>
                        </li>
                    ))}
                </ul>
            )}

            <div className="mt-4 text-xl font-semibold">
                Total Price: ${calculateTotalPrice()}
            </div>

            {error && <p className="text-red-500">{error}</p>}

            <button
                onClick={handlePlaceOrder}
                disabled={loading || cart.length === 0}
                className="mt-4 px-4 py-2 bg-blue-500 text-white rounded-md"
            >
                {loading ? 'Placing Order...' : 'Place Order'}
            </button>
        </div>
    );
};

export default CartPage;
