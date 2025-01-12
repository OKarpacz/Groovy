import React, { useEffect, useState } from "react";

const LogPage = () => {
    const [logs, setLogs] = useState("");
    const [error, setError] = useState("");
    const [loading, setLoading] = useState(true);

    useEffect(() => {
        const fetchLogs = async () => {
            try {
                const response = await fetch("http://localhost:8080/api/logs/fetch");
                if (response.ok) {
                    const data = await response.text();
                    setLogs(data || "No logs available.");
                    setError("");
                } else {
                    setError("Failed to fetch logs. Please try again later.");
                }
            } catch (err) {
                console.error(err);
                setError("An error occurred while fetching logs.");
            } finally {
                setLoading(false);
            }
        };

        fetchLogs();
    }, []);

    return (
        <div className="container mx-auto px-6 py-12">
            <h2 className="text-4xl font-bold text-center text-orange-900 mb-8" style={{ fontFamily: "'Caprasimo', cursive" }}>
                System Logs
            </h2>
            {loading && <p className="text-center text-orange-500">Loading logs...</p>}
            {error && <p className="text-center text-red-500">{error}</p>}
            {logs && (
                <div className="p-4 bg-gray-100 text-gray-900 rounded-md shadow-md max-h-[400px] overflow-auto">
                    <pre className="whitespace-pre-wrap">{logs}</pre>
                </div>
            )}
        </div>
    );
};

export default LogPage;
