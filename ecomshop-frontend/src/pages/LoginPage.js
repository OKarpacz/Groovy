import React, { useState } from 'react';
import axios from 'axios';
import { useNavigate } from 'react-router-dom';

const LoginPage = () => {
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');
    const [error, setError] = useState('');
    const [message, setMessage] = useState('');
    const navigate = useNavigate();
    const handleEmailChange = (e) => setEmail(e.target.value);
    const handlePasswordChange = (e) => setPassword(e.target.value);

    const handleSubmit = async (e) => {
        e.preventDefault();

        const userData = { email, password };

        try {
            const response = await axios.post('http://localhost:8080/api/users/login', userData);

            if (response.status === 200) {
                const { userId } = response.data;
                localStorage.setItem('isLoggedIn', true);
                localStorage.setItem('userId', userId);
                setMessage('Login successful!');
                navigate('/');
            } else {
                setError('Invalid credentials.');
            }
        } catch (error) {
            setError('An error occurred while logging in.');
            console.error('Login error:', error);
        }
    };

    return (
        <div className="flex justify-center items-center h-screen bg-gray-100">
            <div className="bg-white p-8 rounded-lg shadow-lg w-96">
                <h2 className="text-2xl font-bold text-center mb-6">Login</h2>
                <form onSubmit={handleSubmit}>
                    <div className="mb-4">
                        <label htmlFor="email" className="block text-sm font-medium text-gray-700">Email</label>
                        <input
                            type="email"
                            id="email"
                            value={email}
                            onChange={handleEmailChange}
                            required
                            className="w-full px-4 py-2 border border-gray-300 rounded-md"
                        />
                    </div>
                    <div className="mb-4">
                        <label htmlFor="password" className="block text-sm font-medium text-gray-700">Password</label>
                        <input
                            type="password"
                            id="password"
                            value={password}
                            onChange={handlePasswordChange}
                            required
                            className="w-full px-4 py-2 border border-gray-300 rounded-md"
                        />
                    </div>
                    <button type="submit" className="w-full bg-blue-500 text-white py-2 rounded-md hover:bg-blue-600 transition">
                        Login
                    </button>
                </form>
                {message && <div className="mt-4 text-green-500 text-center">{message}</div>}
                {error && <div className="mt-4 text-red-500 text-center">{error}</div>}
            </div>
        </div>
    );
};

export default LoginPage;
