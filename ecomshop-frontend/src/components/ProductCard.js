import React from 'react';

const ProductCard = ({ product, onAddToCart }) => {
    return (
        <div className="border border-gray-300 p-4 rounded-md shadow-lg bg-white">
            <h3 className="text-lg font-bold mb-2">{product.name}</h3>
            <img src={`/assets/${product.image}`} alt={product.name} className="w-full h-48 object-cover rounded-md mb-4" />
            <p className="text-gray-700 text-sm mb-2">{product.description}</p>
            <p className="text-green-600 font-bold mb-2">Price: ${product.price}</p>
            <p className="text-gray-600 mb-2">Available Quantity: {product.quantity}</p>
            <button
                onClick={() => onAddToCart(product)}
                className="bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-700 transition duration-200"
                disabled={product.quantity === 0}
            >
                Add to Cart
            </button>
        </div>
    );
};

export default ProductCard;
