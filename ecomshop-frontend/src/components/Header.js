import React from 'react';
import { Link } from 'react-router-dom';

const Header = () => {
    return (
        <nav className="bg-gray-800 p-4 text-white">
            <div className="container mx-auto flex justify-between">
                <div className="text-lg font-bold">
                    <Link to="/">Groovy</Link>
                </div>
                <div className="space-x-4">
                    <Link to="/" className="hover:text-gray-300">Home</Link>
                    <Link to="/login" className="hover:text-gray-300">Login</Link>
                    <Link to="/cart" className="hover:text-gray-300">Cart</Link>
                </div>
            </div>
        </nav>
    );
};

export default Header;
