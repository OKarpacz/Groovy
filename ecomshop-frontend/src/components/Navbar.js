import React from "react";
import { Link } from "react-router-dom";

const Navbar = () => (
    <nav className="sticky top-0 z-50 bg-yellow-200 py-4 px-8 flex justify-between items-center shadow-md rounded-b-lg">
        <h1 className="text-3xl font-bold text-orange-800" style={{ fontFamily: "'Cooper Black', cursive" }}>
            Groovy
        </h1>
        <div className="space-x-6">
            <a href="/" className="text-orange-700 hover:text-orange-900 font-bold">
                HOME
            </a>
            <a href="/faq" className="text-orange-700 hover:text-orange-900 font-bold">
                FAQ
            </a>
            <a href="/cart" className="text-orange-700 hover:text-orange-900 font-bold">
                CART
            </a>
        </div>
        <div className="space-x-4">
            <button className="bg-gradient-to-r from-red-400 to-orange-600 text-white px-4 py-2 rounded-full shadow-md hover:scale-105 transition-transform">
                Sign In
            </button>
            <button className="bg-gradient-to-r from-pink-400 to-red-500 text-white px-4 py-2 rounded-full shadow-md hover:scale-105 transition-transform">
                Sign Up
            </button>
        </div>
    </nav>

);

export default Navbar;
