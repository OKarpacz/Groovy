import React, { useState } from 'react';

const SearchBar = ({ onSearch }) => {
    const [query, setQuery] = useState('');

    const handleChange = (e) => {
        setQuery(e.target.value);
        onSearch(e.target.value);
    };

    return (
        <input
            type="text"
            value={query}
            onChange={handleChange}
            placeholder="Search for albums..."
            className="p-3 w-64 mb-4 border rounded-md border-gray-300 focus:outline-none focus:ring-2 focus:ring-blue-500"
        />
    );
};

export default SearchBar;
