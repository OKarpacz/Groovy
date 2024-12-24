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
            <button className="mt-6 px-8 py-3 bg-gradient-to-r from-pink-400 to-orange-500 rounded-full text-white font-bold shadow-lg hover:scale-105 transition-transform">
                Shop Now
            </button>
        </div>
    </div>
);

export default Hero;
