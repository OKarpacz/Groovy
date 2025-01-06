import React from "react";

const StoreLocations = () => {
    const stores = [
        {
            id: 1,
            name: "Groovy New York",
            address: "123 Music Ave, New York, NY 10001, United States",
            phone: "+1-123-456-7890",
            image: "/assets/Stores/NowyJorkStore.jpg",
        },
        {
            id: 2,
            name: "Groovy Los Angeles",
            address: "456 Vinyl Blvd, Los Angeles, CA 90001, United States",
            phone: "+1-987-654-3210",
            image: "/assets/Stores/LosAngelesStore.jpg",
        },
    ];

    return (
        <section
            className="relative py-16"
            style={{
                backgroundImage: "url('/assets/Background/StoreBackground.jpg')",
                backgroundSize: "cover",
                backgroundPosition: "center",
            }}
        >
            <div className="absolute inset-0 bg-white bg-opacity-50 backdrop-blur-sm"></div>

            <div className="relative container mx-auto px-6">
                <h2
                    className="text-3xl font-bold text-center mb-12 text-orange-900"
                    style={{fontFamily: "'Caprasimo', cursive"}}
                >
                    Visit Our Groovy Stores
                </h2>
                <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
                    {stores.map((store) => (
                        <div
                            key={store.id}
                            className="bg-white rounded-lg shadow-md overflow-hidden relative z-10"
                        >
                            <img
                                src={store.image}
                                alt={store.name}
                                className="w-full h-64 object-cover"
                            />
                            <div className="p-6">
                                <h3 className="text-xl font-bold text-orange-900">{store.name}</h3>
                                <p className="text-gray-600 mt-2">{store.address}</p>
                                <p className="text-gray-600 mt-1">{store.phone}</p>
                            </div>
                        </div>
                    ))}
                </div>
            </div>
        </section>
    );
};

export default StoreLocations;
