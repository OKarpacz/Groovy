import React, { useEffect, useState } from "react";
import axios from "axios";

const TopCharts = () => {
    const [topCharts, setTopCharts] = useState([]);
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState("");

    useEffect(() => {
        axios
            .get("http://localhost:8080/api/top-charts/fetch")
            .then((response) => {
                setTopCharts(response.data);
                setLoading(false);
            })
            .catch((error) => {
                setError("Error fetching top charts");
                setLoading(false);
            });
    }, []);

    if (loading) return <p className="text-center text-orange-600 retro-font">Loading...</p>;
    if (error) return <p className="text-center text-red-500 retro-font">{error}</p>;

    return (
        <div>
            <ul className="divide-y divide-orange-400">
                {topCharts.map((track, index) => (
                    <li
                        key={track.id}
                        className="py-4 px-6 flex justify-between items-center hover:bg-orange-100 transition-all rounded-lg"
                    >
                        <span className="text-lg font-bold text-orange-700 retro-font"style={{fontFamily: "'Bebas Neue', cursive"}}>
                            {index + 1}. {track.trackName}
                        </span>
                        <span className="text-sm text-orange-500 retro-font">
                            {track.artistName}
                        </span>
                    </li>
                ))}
            </ul>
        </div>
    );
};

export default TopCharts;
