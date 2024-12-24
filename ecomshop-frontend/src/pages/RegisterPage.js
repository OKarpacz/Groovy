import React, { useState } from 'react';
import axios from 'axios';

const RegisterPage = () => {
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');
    const [confirmPassword, setConfirmPassword] = useState('');
    const [firstName, setFirstName] = useState('');
    const [lastName, setLastName] = useState('');
    const [address, setAddress] = useState('');
    const [message, setMessage] = useState('');

    const handleRegister = async () => {
        if (password !== confirmPassword) {
            setMessage('Passwords do not match!');
            return;
        }

        try {
            const response = await axios.post('http://localhost:8080/api/users/register', {
                email,
                password,
                firstName,
                lastName,
                address,
            });

            if (response.status === 200) {
                setMessage('User registered successfully!');
            }
        } catch (error) {
            setMessage('Registration failed. User may already exist.');
            console.error(error);
        }
    };

    return (
        <div className="min-h-screen flex items-center justify-center bg-gray-100">
            <div className="p-8 bg-white shadow-lg rounded-lg w-full max-w-md">
                <h2 className="text-2xl font-bold text-center mb-6">Register</h2>
                <input
                    type="text"
                    placeholder="First Name"
                    value={firstName}
                    onChange={(e) => setFirstName(e.target.value)}
                    className="w-full p-2 mb-4 border rounded"
                />
                <input
                    type="text"
                    placeholder="Last Name"
                    value={lastName}
                    onChange={(e) => setLastName(e.target.value)}
                    className="w-full p-2 mb-4 border rounded"
                />
                <input
                    type="email"
                    placeholder="Email"
                    value={email}
                    onChange={(e) => setEmail(e.target.value)}
                    className="w-full p-2 mb-4 border rounded"
                />
                <input
                    type="password"
                    placeholder="Password"
                    value={password}
                    onChange={(e) => setPassword(e.target.value)}
                    className="w-full p-2 mb-4 border rounded"
                />
                <input
                    type="password"
                    placeholder="Confirm Password"
                    value={confirmPassword}
                    onChange={(e) => setConfirmPassword(e.target.value)}
                    className="w-full p-2 mb-4 border rounded"
                />
                <textarea
                    placeholder="Address"
                    value={address}
                    onChange={(e) => setAddress(e.target.value)}
                    className="w-full p-2 mb-4 border rounded"
                />
                <button
                    onClick={handleRegister}
                    className="w-full bg-green-500 text-white px-4 py-2 rounded hover:bg-green-700"
                >
                    Register
                </button>
                {message && <p className="mt-4 text-center text-red-500">{message}</p>}
            </div>
        </div>
    );
};

export default RegisterPage;
