import React from "react";
import { Link } from "react-router-dom";

const Navbar = () => (
    <nav className="sticky top-0 z-50 bg-yellow-200 py-4 px-8 flex justify-between items-center shadow-md rounded-b-lg">
        <h1 className="text-3xl font-bold text-orange-800" style={{ fontFamily: "'Caprasimo', cursive" }}>
            Groovy
        </h1>
        <div className="flex space-x-8 items-center">
            <Link to="/" className="text-orange-700 hover:text-orange-900 font-bold flex justify-center items-center">
                <img
                    src="/assets/NavIcons/home-1-svgrepo-com.svg"
                    alt="HOME"
                    className="w-6 h-6"
                />
            </Link>
            <Link to="/faq" className="text-orange-700 hover:text-orange-900 font-bold flex justify-center items-center">
                <img
                    src="/assets/NavIcons/faq-file-svgrepo-com.svg"
                    alt="FAQ"
                    className="w-6 h-6"
                />
            </Link>
            <Link to="/top-charts" className="text-orange-700 hover:text-orange-900 font-bold flex justify-center items-center">
                <img
                    src="/assets/NavIcons/music-svgrepo-com.svg"
                    alt="TOP-CHARTS"
                    className="w-6 h-6"
                />
            </Link>
            <Link to="/cart" className="text-orange-700 hover:text-orange-900 font-bold flex justify-center items-center">
                <img
                    src="/assets/NavIcons/cart-shopping-fast-svgrepo-com.svg"
                    alt="CART"
                    className="w-6 h-6"
                />
            </Link>
        </div>
        <div className="space-x-4">
            <Link to="/login">
                <button
                    className="bg-gradient-to-r from-red-400 to-orange-600 text-white px-4 py-2 rounded-full shadow-md hover:scale-105 transition-transform"
                    style={{ fontFamily: "'Caprasimo', cursive" }}
                >
                    Sign In
                </button>
            </Link>
            <Link to="/register">
                <button
                    className="bg-gradient-to-r from-pink-400 to-red-500 text-white px-4 py-2 rounded-full shadow-md hover:scale-105 transition-transform"
                    style={{ fontFamily: "'Caprasimo', cursive" }}
                >
                    Sign Up
                </button>
            </Link>
        </div>
    </nav>
);

export default Navbar;
