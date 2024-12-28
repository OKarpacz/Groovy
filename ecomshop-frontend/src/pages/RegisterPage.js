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
                    Create Your Account
                </h2>
                <form onSubmit={(e) => e.preventDefault()}>
                    <input
                        type="text"
                        placeholder="First Name"
                        value={firstName}
                        onChange={(e) => setFirstName(e.target.value)}
                        className="w-full px-4 py-2 mb-4 border border-gray-300 rounded-md"
                        style={{
                            borderRadius: '12px',
                            fontFamily: "'Poppins', sans-serif",
                        }}
                    />
                    <input
                        type="text"
                        placeholder="Last Name"
                        value={lastName}
                        onChange={(e) => setLastName(e.target.value)}
                        className="w-full px-4 py-2 mb-4 border border-gray-300 rounded-md"
                        style={{
                            borderRadius: '12px',
                            fontFamily: "'Poppins', sans-serif",
                        }}
                    />
                    <input
                        type="email"
                        placeholder="Email"
                        value={email}
                        onChange={(e) => setEmail(e.target.value)}
                        className="w-full px-4 py-2 mb-4 border border-gray-300 rounded-md"
                        style={{
                            borderRadius: '12px',
                            fontFamily: "'Poppins', sans-serif",
                        }}
                    />
                    <input
                        type="password"
                        placeholder="Password"
                        value={password}
                        onChange={(e) => setPassword(e.target.value)}
                        className="w-full px-4 py-2 mb-4 border border-gray-300 rounded-md"
                        style={{
                            borderRadius: '12px',
                            fontFamily: "'Poppins', sans-serif",
                        }}
                    />
                    <input
                        type="password"
                        placeholder="Confirm Password"
                        value={confirmPassword}
                        onChange={(e) => setConfirmPassword(e.target.value)}
                        className="w-full px-4 py-2 mb-4 border border-gray-300 rounded-md"
                        style={{
                            borderRadius: '12px',
                            fontFamily: "'Poppins', sans-serif",
                        }}
                    />
                    <textarea
                        placeholder="Address"
                        value={address}
                        onChange={(e) => setAddress(e.target.value)}
                        className="w-full px-4 py-2 mb-4 border border-gray-300 rounded-md"
                        style={{
                            borderRadius: '12px',
                            fontFamily: "'Poppins', sans-serif",
                        }}
                    />
                    <button
                        type="button"
                        onClick={handleRegister}
                        className="w-full py-2 rounded-md shadow-lg"
                        style={{
                            background: 'linear-gradient(90deg, #f77f00, #fcbf49)',
                            color: 'white',
                            fontFamily: "'Cooper Black', cursive",
                            borderRadius: '20px',
                        }}
                    >
                        Register
                    </button>
                </form>
                {message && (
                    <div
                        className={`mt-4 text-center ${
                            message.includes('successfully') ? 'text-green-500' : 'text-red-500'
                        }`}
                    >
                        {message}
                    </div>
                )}
            </div>
        </div>
    );
};

export default RegisterPage;
