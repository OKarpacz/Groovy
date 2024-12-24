import React from "react";
import Hero from "../components/Hero";
import ProductList from "../components/ProductList";
import StoreLocations from "../components/StoreLocations";

const HomePage = ({ onAddToCart }) => (
    <>
        <Hero />
        <div className="py-12">
            <h2 className="text-5xl font-bold text-orange-900 text-center mt-1 drop-shadow-lg mb-10"
                style={{ fontFamily: "'Cooper Black', cursive" }}>Featured Vinyls</h2>
            <ProductList onAddToCart={onAddToCart} />
            <StoreLocations />
        </div>
    </>
);

export default HomePage;
