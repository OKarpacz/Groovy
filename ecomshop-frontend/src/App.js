import React, { useReducer } from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Navbar from "./components/Navbar";
import Footer from "./components/Footer";
import HomePage from "./pages/HomePage";
import CartPage from "./pages/CartPage";
import LoginPage from "./pages/LoginPage";
import RegisterPage from "./pages/RegisterPage";
import ChatBot from "./components/ChatBot";
import FAQPage from "./pages/FAQPage";
import TopChartsPage from "./pages/TopChartsPage";

const cartReducer = (state, action) => {
    switch (action.type) {
        case "ADD_TO_CART":
            const existingProduct = state.find((item) => item.id === action.payload.id);
            if (existingProduct) {
                return state.map((item) =>
                    item.id === action.payload.id
                        ? { ...item, quantity: item.quantity + 1 }
                        : item
                );
            }
            return [...state, { ...action.payload, quantity: 1 }];

        case "REMOVE_FROM_CART":
            return state.filter((item) => item.id !== action.payload.id);

        case "INCREMENT_QUANTITY":
            return state.map((item) =>
                item.id === action.payload.id
                    ? { ...item, quantity: item.quantity + 1 }
                    : item
            );

        case "DECREMENT_QUANTITY":
            return state.map((item) =>
                item.id === action.payload.id && item.quantity > 1
                    ? { ...item, quantity: item.quantity - 1 }
                    : item
            );

        default:
            return state;
    }
};

const calculateTotalPrice = (cart) => {
    return cart.reduce((total, item) => total + item.price * item.quantity, 0).toFixed(2);
};

const App = () => {
    const [cart, dispatch] = useReducer(cartReducer, []);

    return (
        <div className="relative bg-gradient-to-b from-orange-300 via-pink-200 to-yellow-200">
        <Router>
            <div className="flex flex-col min-h-screen">
                <Navbar />

                <main className="flex-grow container mx-auto px-4 py-8">
                    <Routes>
                        <Route
                            path="/"
                            element={
                                <HomePage
                                    onAddToCart={(product) => dispatch({ type: "ADD_TO_CART", payload: product })}
                                />
                            }
                        />
                        <Route
                            path="/cart"
                            element={
                                <CartPage
                                    cart={cart}
                                    dispatch={dispatch}
                                    calculateTotalPrice={() => calculateTotalPrice(cart)}
                                />
                            }
                        />
                        <Route path="/login" element={<LoginPage />} />
                        <Route path="/register" element={<RegisterPage />} />
                        <Route path="/faq" element={<FAQPage />} />
                        <Route path="/top-charts" element={<TopChartsPage />} />
                    </Routes>
                </main>

                <Footer />
            </div>

            <ChatBot />
        </Router>
        </div>
    );
};

export default App;
