import React, { useState } from 'react';
import axios from 'axios';
import { useNavigate } from 'react-router-dom';

const CartPage = ({
                      dispatch = [],
                      cart = [],
                      calculateTotalPrice = () => 0,
                  }) => {
    const [loading, setLoading] = useState(false);
    const [error, setError] = useState(null);
    const navigate = useNavigate();

    const isLoggedIn = localStorage.getItem('isLoggedIn');

    const handlePlaceOrder = async () => {
        if (!isLoggedIn) {
            alert('You need to log in to place an order.');
            navigate('/login');
            return;
        }

        setLoading(true);
        setError(null);

        try {
            const userId = parseInt(localStorage.getItem('userId'), 10);

            if (isNaN(userId)) {
                throw new Error('Invalid user ID. Please log in again.');
            }

            const orderData = {
                userId,
                orderDate: new Date().toISOString(),
                productIds: cart.map((item) => item.id),
                quantities: cart.map((item) => item.quantity),
            };

            const response = await axios.post('http://localhost:8080/api/orders', orderData, {
                headers: { 'Content-Type': 'application/json' },
            });

            if (response.status === 200 || response.status === 201) {
                alert('Order placed successfully!');
                navigate('/');
            } else {
                throw new Error(`Unexpected response status: ${response.status}`);
            }
        } catch (error) {
            console.error(
                'There was an error placing the order:',
                error.response ? error.response.data : error.message
            );
            setError('Failed to place the order. Please check your network or try again later.');
        } finally {
            setLoading(false);
        }
    };

    const handleIncrementQuantity = (productId) => {
        dispatch({ type: 'INCREMENT_QUANTITY', payload: { id: productId } });
    };

    const handleRemoveFromCart = (productId) => {
        dispatch({ type: 'REMOVE_FROM_CART', payload: { id: productId } });
    };

    const handleDecrementQuantity = (productId) => {
        dispatch({ type: 'DECREMENT_QUANTITY', payload: { id: productId } });
    };

    return (
        <div className="container mx-auto px-6 py-12">
            <h2 className="text-3xl font-semibold mb-6 text-center">Your Cart</h2>

            {cart.length === 0 ? (
                <div className="flex flex-col items-center text-center">
                    <h3 className="text-2xl font-medium text-gray-700 mb-4">Your cart is currently empty.</h3>
                    <p className="text-gray-600 max-w-lg">Add some items to your cart to see them here.</p>
                    <div className="mt-10 w-64 h-64 border-dashed border-4 border-gray-300 rounded-full flex items-center justify-center">
                        <p className="text-gray-400">No Items</p>
                    </div>
                </div>
            ) : (
                <div>
                    <ul className="space-y-4">
                        {cart.map((product) => (
                            <li
                                key={product.id}
                                className="flex items-center justify-between bg-white shadow-md rounded-md p-4"
                            >
                                <div className="flex items-center space-x-4">
                                    <img
                                        src={`/assets/${product.image}`}
                                        alt={product.name}
                                        className="w-16 h-16 rounded-md object-cover"
                                    />
                                    <div>
                                        <h3 className="font-semibold text-lg">{product.name}</h3>
                                        <p className="text-gray-600">Qty: {product.quantity}</p>
                                    </div>
                                </div>
                                <div className="text-right">
                                    <p className="text-gray-800 font-medium">
                                        ${product.price * product.quantity}
                                    </p>
                                    <div className="mt-2 flex space-x-2">
                                        <button
                                            className="px-3 py-1 bg-gray-300 text-gray-800 rounded hover:bg-gray-400"
                                            onClick={() => handleDecrementQuantity(product.id)}
                                        >
                                            -
                                        </button>
                                        <button
                                            className="px-3 py-1 bg-gray-300 text-gray-800 rounded hover:bg-gray-400"
                                            onClick={() => handleIncrementQuantity(product.id)}
                                        >
                                            +
                                        </button>
                                        <button
                                            className="px-3 py-1 bg-red-500 text-white rounded hover:bg-red-600"
                                            onClick={() => handleRemoveFromCart(product.id)}
                                        >
                                            Remove
                                        </button>
                                    </div>
                                </div>
                            </li>
                        ))}
                    </ul>

                    <div className="mt-8 flex justify-between items-center">
                        <h3 className="text-2xl font-semibold">Total Price: ${calculateTotalPrice()}</h3>
                        <button
                            className="px-6 py-3 bg-gradient-to-r from-green-500 to-teal-500 text-white font-medium rounded shadow-md hover:from-green-600 hover:to-teal-600"
                            onClick={handlePlaceOrder}
                            disabled={loading}
                        >
                            {loading ? 'Placing Order...' : 'Place Order'}
                        </button>
                    </div>
                </div>
            )}

            {error && <p className="text-red-500 mt-4">{error}</p>}
        </div>
    );
};

export default CartPage;
