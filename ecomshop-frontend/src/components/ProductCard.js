import React from "react";

const ProductCard = ({ product, onAddToCart }) => (
    <div className="bg-gradient-to-b from-yellow-100 via-pink-50 to-yellow-100 p-6 rounded-lg shadow-lg transform hover:scale-105 transition-transform">
        <img
            src={`/assets/${product.image}`}
            alt={product.name}
            className="w-full h-48 object-cover rounded-md"
        />
        <h2
            className="text-2xl font-bold mt-4 text-orange-900"
            style={{ fontFamily: "'Cooper Black', cursive" }}
        >
            {product.name}
        </h2>
        <p className="text-gray-700 mt-2">{product.description}</p>
        <div className="flex items-center justify-between mt-4">
            <span className="text-orange-800 font-bold text-lg">${product.price}</span>
            <button
                onClick={() => onAddToCart(product)}
                className="bg-gradient-to-r from-orange-400 via-pink-500 to-red-400 text-white px-4 py-2 rounded-full shadow-md hover:shadow-lg hover:scale-105 transition-transform"
                disabled={product.quantity === 0}
            >
                Add to Cart
            </button>
        </div>
    </div>
);

export default ProductCard;
