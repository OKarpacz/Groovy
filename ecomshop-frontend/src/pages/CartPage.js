import React, { useState } from "react";
import axios from "axios";
import { useNavigate } from "react-router-dom";

const CartPage = ({
                      dispatch = [],
                      cart = [],
                      calculateTotalPrice = () => 0,
                  }) => {
    const [loading, setLoading] = useState(false);
    const [error, setError] = useState(null);
    const [quantityError, setQuantityError] = useState("");
    const navigate = useNavigate();

    const isLoggedIn = localStorage.getItem("isLoggedIn");

    const handlePlaceOrder = async () => {
        if (!isLoggedIn) {
            alert("You need to log in to place an order.");
            navigate("/login");
            return;
        }

        setLoading(true);
        setError(null);

        try {
            const userId = parseInt(localStorage.getItem("userId"), 10);

            if (isNaN(userId)) {
                throw new Error("Invalid user ID. Please log in again.");
            }

            const orderData = {
                userId,
                orderDate: new Date().toISOString(),
                productIds: cart.map((item) => item.id),
                quantities: cart.map((item) => item.quantity),
            };

            const response = await axios.post("http://localhost:8080/api/orders", orderData, {
                headers: { "Content-Type": "application/json" },
            });

            if (response.status === 200 || response.status === 201) {
                alert("Order placed successfully!");
                navigate("/");
            } else {
                throw new Error(`Unexpected response status: ${response.status}`);
            }
        } catch (error) {
            console.error(
                "There was an error placing the order:",
                error.response ? error.response.data : error.message
            );
            setError("You need to log in to place an order.");
        } finally {
            setLoading(false);
        }
    };

    const handleIncrementQuantity = (productId) => {
        const product = cart.find((item) => item.id === productId);

        if (product.quantity >= product.availableQuantity) {
            setQuantityError(`Only ${product.availableQuantity} items are available for ${product.name}.`);
            return;
        }

        setQuantityError("");
        dispatch({ type: "INCREMENT_QUANTITY", payload: { id: productId } });
    };

    const handleDecrementQuantity = (productId) => {
        dispatch({ type: "DECREMENT_QUANTITY", payload: { id: productId } });
    };

    const handleRemoveFromCart = (productId) => {
        dispatch({ type: "REMOVE_FROM_CART", payload: { id: productId } });
    };

    return (
        <div className="container mx-auto px-6 py-12">
            <h2
                className="text-4xl font-bold mb-6 text-center text-orange-900"
                style={{
                    fontFamily: "'Caprasimo', cursive",
                    textShadow: "2px 2px #ffcc70",
                }}
            >
                Your Groovy Cart
            </h2>

            {cart.length === 0 ? (
                <div className="flex items-center justify-center h-screen">
                <div className="flex flex-col items-center text-center">
                    <h3
                        className="text-2xl font-medium text-orange-800 mb-4"
                        style={{
                            fontFamily: "'Caprasimo', cursive",
                            textShadow: "1px 1px #ffcc70",
                        }}
                    >
                        Your cart is currently empty.
                    </h3>
                    <p
                        className="text-gray-700 max-w-lg"
                        style={{
                            fontFamily: "'Poppins', sans-serif",
                            fontSize: "18px",
                        }}
                    >
                        Add some items to your cart and keep groovin'.
                    </p>
                </div>
                </div>
            ) : (
                <div>
                    <ul className="space-y-4">
                        {cart.map((product) => (
                            <li
                                key={product.id}
                                className="flex items-center justify-between bg-yellow-100 shadow-lg rounded-md p-4 border border-yellow-300"
                            >
                                <div className="flex items-center space-x-4">
                                    <img
                                        src={`/assets/${product.image}`}
                                        alt={product.name}
                                        className="w-16 h-16 rounded-md object-cover shadow-md"
                                        style={{
                                            border: "2px solid #ffcc70",
                                            borderRadius: "12px",
                                        }}
                                    />
                                    <div>
                                        <h3
                                            className="text-lg font-bold text-orange-900"
                                            style={{
                                                fontFamily: "'Caprasimo', cursive",
                                                textShadow: "1px 1px #ffcc70",
                                            }}
                                        >
                                            {product.name}
                                        </h3>
                                        <p
                                            className="text-orange-800"
                                            style={{
                                                fontFamily: "'Poppins', sans-serif",
                                            }}
                                        >
                                            Qty: {product.quantity} / Available: {product.availableQuantity}
                                        </p>
                                    </div>
                                </div>
                                <div className="text-right">
                                    <p
                                        className="text-lg font-bold text-orange-900"
                                        style={{
                                            fontFamily: "'Caprasimo', cursive",
                                            textShadow: "1px 1px #ffcc70",
                                        }}
                                    >
                                        ${Number(product.price * product.quantity).toFixed(2)}
                                    </p>
                                    <div className="mt-2 flex space-x-2">
                                        <button
                                            className="px-3 py-1 bg-orange-400 text-white font-bold rounded shadow hover:bg-orange-500"
                                            onClick={() => handleDecrementQuantity(product.id)}
                                        >
                                            -
                                        </button>
                                        <button
                                            className="px-3 py-1 bg-orange-400 text-white font-bold rounded shadow hover:bg-orange-500"
                                            onClick={() => handleIncrementQuantity(product.id)}
                                        >
                                            +
                                        </button>
                                        <button
                                            className="px-3 py-1 bg-red-500 text-white font-bold rounded shadow hover:bg-red-600"
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
                        <h3
                            className="text-3xl font-bold text-orange-900"
                            style={{
                                fontFamily: "'Caprasimo', cursive",
                                textShadow: "2px 2px #ffcc70",
                            }}
                        >
                            Total Price: ${calculateTotalPrice()}
                        </h3>
                        <button
                            className="px-6 py-3 bg-gradient-to-r from-orange-400 to-red-500 text-white font-bold rounded shadow-lg hover:from-orange-500 hover:to-red-600"
                            onClick={handlePlaceOrder}
                            disabled={loading}
                        >
                            {loading ? "Placing Order..." : "Place Order"}
                        </button>
                    </div>
                </div>
            )}

            {error && <p className="text-red-500 mt-4">{error}</p>}
            {quantityError && <p className="text-red-500 mt-4">{quantityError}</p>}
        </div>
    );
};

export default CartPage;
