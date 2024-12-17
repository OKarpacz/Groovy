import React, { useState, useEffect, useReducer } from 'react';
import { BrowserRouter as Router, Routes, Route, useLocation } from 'react-router-dom';
import axios from 'axios';
import Header from './components/Header';
import CartPage from './pages/CartPage';
import SearchBar from './components/SearchBar';
import ProductCard from './components/ProductCard';
import ChatBot from './components/ChatBot';

const API_URL = process.env.REACT_APP_API_URL;

const cartReducer = (state, action) => {
    switch (action.type) {
        case "ADD_TO_CART":
            const existingProduct = state.find(item => item.id === action.payload.id);
            if (existingProduct) {
                return state.map(item =>
                    item.id === action.payload.id
                        ? { ...item, quantity: Math.min(item.quantity + 1, action.payload.stock) }
                        : item
                );
            }
            return [...state, { ...action.payload, quantity: 1 }];

        case "REMOVE_FROM_CART":
            return state.filter(item => item.id !== action.payload.id);

        case "INCREMENT_QUANTITY":
            return state.map(item =>
                item.id === action.payload.id
                    ? { ...item, quantity: Math.min(item.quantity + 1, item.stock) }
                    : item
            );

        case "DECREMENT_QUANTITY":
            return state.map(item =>
                item.id === action.payload.id && item.quantity > 1
                    ? { ...item, quantity: item.quantity - 1 }
                    : item
            );

        default:
            return state;
    }
};

const App = () => {
    const [products, setProducts] = useState([]);
    const [filteredProducts, setFilteredProducts] = useState([]);
    const [cart, dispatch] = useReducer(cartReducer, []);
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');
    const [message, setMessage] = useState('');

    useEffect(() => {
        fetch("http://localhost:8080/api/products")
            .then(response => response.json())
            .then(data => {
                console.log("Fetched data:", data);
                setProducts(data || []);
                setFilteredProducts(data || []);
            })
            .catch(error => console.error('Error fetching products:', error));
    }, []);

    const handleSearch = (query) => {
        if (!query) {
            setFilteredProducts(products);
        } else {
            const filtered = products.filter(product =>
                product.name.toLowerCase().includes(query.toLowerCase()) ||
                product.description.toLowerCase().includes(query.toLowerCase())
            );
            setFilteredProducts(filtered);
        }
    };

    const handleLogin = async () => {
        try {
            if (!email || !password) {
                setMessage("Email and password must not be empty.");
                return;
            }

            const response = await axios.post("http://localhost:8080/api/users/login", { email, password });
            setMessage("Logged in successfully! Welcome back.");
        } catch (error) {
            setMessage("Invalid email or password.");
            console.error("Login failed:", error);
        }
    };

    const handleRegister = async () => {
        try {
            const response = await axios.post("http://localhost:8080/api/users/register", { email, password });
            setMessage(`User registered successfully! ID: ${response.data.id}`);
        } catch (error) {
            setMessage("Registration failed. Please try again later.");
            console.error(error);
        }
    };

    return (
        <Router>
            <Header />
            <MainContent
                products={products}
                filteredProducts={filteredProducts}
                handleSearch={handleSearch}
                onAddToCart={(product) => dispatch({ type: "ADD_TO_CART", payload: { ...product, stock: product.quantity } })}
                cart={cart}
                dispatch={dispatch}
                email={email}
                setEmail={setEmail}
                password={password}
                setPassword={setPassword}
                message={message}
                handleLogin={handleLogin}
                handleRegister={handleRegister}
            />
        </Router>
    );
};

const MainContent = ({
                         products, filteredProducts, handleSearch, onAddToCart, cart, dispatch,
                         email, setEmail, password, setPassword, message, handleLogin, handleRegister
                     }) => {
    const location = useLocation();

    return (
        <div className="container mx-auto p-6">
            {location.pathname === '/' && <SearchBar onSearch={handleSearch} />}
            <Routes>
                <Route
                    path="/"
                    element={
                        <>
                            <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6">
                                {filteredProducts.map(product => (
                                    <ProductCard
                                        key={product.id}
                                        product={product}
                                        onAddToCart={onAddToCart}
                                    />
                                ))}
                            </div>
                            <ChatBot />
                        </>
                    }
                />
                <Route
                    path="/cart"
                    element={
                        <CartPage
                            cart={cart}
                            onRemoveFromCart={(id) => dispatch({ type: "REMOVE_FROM_CART", payload: { id } })}
                            onIncrementQuantity={(id) => dispatch({ type: "INCREMENT_QUANTITY", payload: { id } })}
                            onDecrementQuantity={(id) => dispatch({ type: "DECREMENT_QUANTITY", payload: { id } })}
                            calculateTotalPrice={() =>
                                cart.reduce((total, item) => total + item.price * item.quantity, 0).toFixed(2)
                            }
                        />
                    }
                />
                <Route
                    path="/login"
                    element={
                        <div className="min-h-screen flex items-center justify-center bg-gray-100">
                            <div className="p-8 bg-white shadow-lg rounded-lg w-full max-w-md">
                                <h2 className="text-2xl font-bold text-center mb-6">Login / Register</h2>
                                <input
                                    type="email"
                                    placeholder="Email"
                                    value={email}
                                    onChange={(e) => setEmail(e.target.value)}
                                    className="w-full p-2 mb-4 border rounded"
                                />
                                <input
                                    type="password"
                                    placeholder="Password"
                                    value={password}
                                    onChange={(e) => setPassword(e.target.value)}
                                    className="w-full p-2 mb-4 border rounded"
                                />
                                <div className="flex justify-between">
                                    <button onClick={handleLogin} className="bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-700">
                                        Login
                                    </button>
                                    <button onClick={handleRegister} className="bg-green-500 text-white px-4 py-2 rounded hover:bg-green-700">
                                        Register
                                    </button>
                                </div>
                                {message && <p className="mt-4 text-center text-red-500">{message}</p>}
                            </div>
                        </div>
                    }
                />
            </Routes>
        </div>
    );
};

export default App;
