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
                setMessage('Login successful! Redirecting...');
                setError('');

                setTimeout(() => {
                    navigate('/');
                }, 1000);
            } else {
                setError('Invalid credentials.');
                setMessage('');
            }
        } catch (error) {
            setError('An error occurred while logging in.');
            setMessage('');
            console.error('Login error:', error);
        }
    };

    return (
        <div
            className="flex justify-center items-center h-screen"
            style={{
                background: 'linear-gradient(135deg, #ffcc70, #ff9472)',
                backgroundImage: 'url(/path-to-your-floral-background-image.png)',
                backgroundSize: 'cover',
                backgroundPosition: 'center',
            }}
        >
            <div className="bg-white/80 p-8 rounded-lg shadow-2xl w-96">
                <h2
                    className="text-3xl font-bold text-center mb-6 text-orange-800"
                    style={{ fontFamily: "'Cooper Black', cursive" }}
                >
                    Welcome Back!
                </h2>
                <form onSubmit={handleSubmit}>
                    <div className="mb-4">
                        <label htmlFor="email" className="block text-sm font-medium text-gray-700">
                            Email
                        </label>
                        <input
                            type="email"
                            id="email"
                            value={email}
                            onChange={handleEmailChange}
                            required
                            className="w-full px-4 py-2 border border-gray-300 rounded-md"
                            style={{
                                borderRadius: '12px',
                                fontFamily: "'Poppins', sans-serif",
                            }}
                        />
                    </div>
                    <div className="mb-4">
                        <label htmlFor="password" className="block text-sm font-medium text-gray-700">
                            Password
                        </label>
                        <input
                            type="password"
                            id="password"
                            value={password}
                            onChange={handlePasswordChange}
                            required
                            className="w-full px-4 py-2 border border-gray-300 rounded-md"
                            style={{
                                borderRadius: '12px',
                                fontFamily: "'Poppins', sans-serif",
                            }}
                        />
                    </div>
                    <button
                        type="submit"
                        className="w-full py-2 rounded-md shadow-lg"
                        style={{
                            background: 'linear-gradient(90deg, #f77f00, #fcbf49)',
                            color: 'white',
                            fontFamily: "'Cooper Black', cursive",
                            borderRadius: '20px',
                        }}
                    >
                        Login
                    </button>
                </form>
                {message && (
                    <div className="mt-4 text-green-500 text-center bg-green-100 p-2 rounded-md shadow-md">
                        {message}
                    </div>
                )}
                {error && (
                    <div className="mt-4 text-red-500 text-center bg-red-100 p-2 rounded-md shadow-md">
                        {error}
                    </div>
                )}
            </div>
        </div>
    );
};

export default LoginPage;
