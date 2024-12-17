import React, { useState, useEffect, useRef } from "react";
import axios from "axios";

const ChatBot = () => {
    const [messages, setMessages] = useState([]);
    const [input, setInput] = useState("");
    const [isMinimized, setIsMinimized] = useState(true);
    const [isLoading, setIsLoading] = useState(false);

    const messagesEndRef = useRef(null);

    const API_URL = process.env.REACT_APP_API_URL || "http://localhost:8080/api/chat";

    const scrollToBottom = () => {
        messagesEndRef.current?.scrollIntoView({ behavior: "smooth" });
    };

    useEffect(() => {
        scrollToBottom();
    }, [messages]);

    const sendMessage = async () => {
        if (!input.trim()) return;

        const newMessage = { role: "user", content: input };
        const updatedMessages = [...messages, newMessage];
        setMessages(updatedMessages);
        setInput("");
        setIsLoading(true);

        try {
            const response = await axios.post(API_URL, { messages: updatedMessages });
            const botMessage = { role: "assistant", content: response.data.reply || "No response from server." };
            setMessages([...updatedMessages, botMessage]);
        } catch (error) {
            console.error("Error:", error);
            setMessages([
                ...updatedMessages,
                { role: "assistant", content: "There was an error processing your request. Please try again later." },
            ]);
        } finally {
            setIsLoading(false);
        }
    };

    return (
        <div className="fixed bottom-5 right-5">
            {isMinimized ? (
                <button
                    onClick={() => setIsMinimized(false)}
                    className="bg-blue-600 text-white px-4 py-2 rounded-full shadow-lg hover:bg-blue-700 transition"
                    aria-label="Open chat"
                >
                    💬 Chat
                </button>
            ) : (
                <div className="w-80 h-96 bg-white border border-gray-300 rounded-lg shadow-lg flex flex-col">
                    <div className="bg-blue-600 text-white flex justify-between items-center py-2 px-4 rounded-t-lg">
                        <span className="font-semibold">ChatGPT Customer Support</span>
                        <button
                            onClick={() => setIsMinimized(true)}
                            className="text-white text-lg hover:text-gray-200"
                            aria-label="Close chat"
                        >
                            ✕
                        </button>
                    </div>

                    <div className="flex-1 p-2 overflow-y-auto bg-gray-50 space-y-2">
                        {messages.map((msg, index) => (
                            <div
                                key={index}
                                className={`p-2 rounded-md text-sm ${
                                    msg.role === "user" ? "bg-blue-200 text-right" : "bg-green-200 text-left"
                                }`}
                            >
                                {msg.content}
                            </div>
                        ))}
                        {isLoading && <div className="text-gray-500 text-center">Bot is typing...</div>}
                        <div ref={messagesEndRef} />
                    </div>

                    <div className="flex border-t border-gray-300">
                        <input
                            type="text"
                            value={input}
                            placeholder="Ask me anything..."
                            onChange={(e) => setInput(e.target.value)}
                            className="flex-1 p-2 text-sm border-none focus:outline-none"
                        />
                        <button
                            onClick={sendMessage}
                            className="bg-blue-600 text-white px-4 py-2 hover:bg-blue-700 transition"
                            aria-label="Send message"
                        >
                            Send
                        </button>
                    </div>
                </div>
            )}
        </div>
    );
};

export default ChatBot;
