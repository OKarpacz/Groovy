import React from "react";

const ProductCard = ({ product, onAddToCart }) => {
    const isOutOfStock = product.availableQuantity === 0;

    return (
        <div
            className={`p-6 rounded-lg shadow-lg transform hover:scale-105 transition-transform ${
                isOutOfStock ? "bg-gray-200 text-gray-500 cursor-not-allowed" : "bg-gradient-to-b from-yellow-100 via-pink-50 to-yellow-100"
            }`}
        >
            <img
                src={`/assets/${product.image}`}
                alt={product.name}
                className={`w-full h-48 object-cover rounded-md ${
                    isOutOfStock ? "opacity-50" : ""
                }`}
            />
            <h2
                className="text-2xl font-bold mt-4 text-orange-900"
                style={{ fontFamily: "'Cooper Black', cursive" }}
            >
                {product.name}
            </h2>
            <p className="text-gray-700 mt-2">{product.description}</p>
            <div className="flex items-center justify-between mt-4">
                <span className={`font-bold text-lg ${isOutOfStock ? "text-gray-500" : "text-orange-800"}`}>
                    {isOutOfStock ? "Out of Stock" : `$${product.price}`}
                </span>
                <button
                    onClick={() => onAddToCart(product)}
                    className={`px-4 py-2 rounded-full shadow-md transition-transform ${
                        isOutOfStock
                            ? "bg-gray-400 text-gray-200 cursor-not-allowed"
                            : "bg-gradient-to-r from-orange-400 via-pink-500 to-red-400 text-white hover:shadow-lg hover:scale-105"
                    }`}
                    disabled={isOutOfStock}
                >
                    {isOutOfStock ? "Unavailable" : "Add to Cart"}
                </button>
            </div>
        </div>
    );
};

export default ProductCard;
