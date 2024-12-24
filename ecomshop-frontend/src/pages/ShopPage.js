import React from "react";
import ProductList from "../components/ProductList";

const ShopPage = ({ onAddToCart }) => (
    <div className="container mx-auto p-6">
        <h1 className="text-3xl font-bold mb-6">Shop Vinyls</h1>
        <ProductList onAddToCart={onAddToCart} />
    </div>
);

export default ShopPage;
