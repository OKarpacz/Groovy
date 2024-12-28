import React, { useState } from "react";

const SearchBar = ({ onSearch }) => {
    const [query, setQuery] = useState("");

    const handleInputChange = (e) => {
        setQuery(e.target.value);
    };

    const handleSearch = () => {
        onSearch(query.trim());
    };

    const handleKeyPress = (e) => {
        if (e.key === "Enter") {
            handleSearch();
        }
    };

    return (
        <div className="flex items-center justify-center mb-6">
            <input
                type="text"
                value={query}
                onChange={handleInputChange}
                onKeyPress={handleKeyPress}
                placeholder="Search for an album..."
                className="w-full max-w-md px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring focus:ring-orange-300"
            />
            <button
                onClick={handleSearch}
                className="ml-2 px-4 py-2 bg-gradient-to-r from-orange-400 to-pink-500 text-white font-semibold rounded-md hover:scale-105 transition-transform"
            >
                Search
            </button>
        </div>
    );
};

export default SearchBar;
