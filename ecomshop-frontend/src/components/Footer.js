import React from "react";

const Footer = () => (
    <footer className="bg-gradient-to-t from-gray-900 via-gray-800 to-gray-900 text-white py-8">
        <div className="container mx-auto px-6 md:px-12 flex flex-col md:flex-row justify-between items-center space-y-6 md:space-y-0">
            <div className="text-center md:text-left">
                <h3
                    className="font-bold text-xl text-yellow-300"
                    style={{ fontFamily: "'Cooper Black', cursive" }}
                >
                    Groovy
                </h3>
                <p className="text-sm text-gray-400 mt-1">
                    Your destination for timeless music.
                </p>
            </div>
            <div className="flex flex-col md:flex-row text-center md:text-left space-y-2 md:space-y-0 md:space-x-8">
                <a
                    href="/"
                    className="hover:text-yellow-300 text-gray-400 transition-colors duration-300"
                >
                    About Us
                </a>
                <a
                    href="/"
                    className="hover:text-yellow-300 text-gray-400 transition-colors duration-300"
                >
                    Contact Us
                </a>
                <a
                    href="/"
                    className="hover:text-yellow-300 text-gray-400 transition-colors duration-300"
                >
                    Terms & Conditions
                </a>
            </div>
            <div className="text-center md:text-right">
                <p className="text-sm text-gray-400">
                    © 2024 Groovy. All Rights Reserved.
                </p>
            </div>
        </div>
    </footer>
);

export default Footer;
