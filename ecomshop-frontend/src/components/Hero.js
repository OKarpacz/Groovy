import React from "react";

const Hero = () => (
    <div
        className="relative h-screen flex flex-col items-center justify-center text-center bg-cover bg-center"
        style={{ backgroundImage: "url('/assets/Background/vinylBG.jpg')" }}
    >
        <div className="absolute inset-0 bg-yellow-500/30 backdrop-blur-md"></div>

        <div className="relative z-10 max-w-3xl p-6 bg-white/80 rounded-lg shadow-lg">
            <h1
                className="text-6xl font-bold text-orange-900 drop-shadow-lg"
                style={{ fontFamily: "'Cooper Black', cursive" }}
            >
                Rediscover the Vinyl Classics
            </h1>
            <p className="text-lg text-orange-800 mt-4">
                Groove into the past with our curated retro collection.
            </p>

            <h3 className="text-lg font-bold text-gray-700 mt-6">
                Check us out on Social Media
            </h3>
            <div className="flex justify-center space-x-4 mt-4">
                <a
                    href="https://github.com/OKarpacz/Groovy"
                    target="_blank"
                    rel="noopener noreferrer"
                    className="flex items-center justify-center w-12 h-12 bg-gradient-to-r from-gray-700 to-black rounded-full shadow-lg hover:scale-110 transition-transform"
                >
                    <img
                        src="/assets/HeroIcons/github-svgrepo-com.svg"
                        alt="GitHub"
                        className="w-6 h-6"
                    />
                </a>

                <a
                    href="https://instagram.com/"
                    target="_blank"
                    rel="noopener noreferrer"
                    className="flex items-center justify-center w-12 h-12 bg-gradient-to-r from-pink-500 to-red-400 rounded-full shadow-lg hover:scale-110 transition-transform"
                >
                    <img
                        src="/assets/HeroIcons/instagram-svgrepo-com.svg"
                        alt="Instagram"
                        className="w-6 h-6"
                    />
                </a>

                <a
                    href="https://facebook.com/"
                    target="_blank"
                    rel="noopener noreferrer"
                    className="flex items-center justify-center w-12 h-12 bg-gradient-to-r from-blue-600 to-blue-500 rounded-full shadow-lg hover:scale-110 transition-transform"
                >
                    <img
                        src="/assets/HeroIcons/facebook-svgrepo-com.svg"
                        alt="Facebook"
                        className="w-6 h-6"
                    />
                </a>
            </div>
        </div>
    </div>
);

export default Hero;
