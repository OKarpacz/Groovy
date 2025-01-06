import React from "react";
import TopCharts from "../components/TopCharts";

const TopChartsPage = () => {
    return (
        <div className="container mx-auto px-6 py-12">
            <h2 className="text-4xl font-bold text-center mb-8 text-orange-900" style={{ fontFamily: "'Caprasimo', cursive", }}>
                Top Charts
            </h2>
            <div className="space-y-6">
                <div className="bg-yellow-100 p-6 rounded-lg shadow-md">
                    <TopCharts />
                </div>
            </div>
        </div>
    );
};

export default TopChartsPage;
