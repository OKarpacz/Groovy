import React from "react";

const FAQPage = () => {
    const faqs = [
        {
            question: "What is Groovy?",
            answer: "Groovy is your one-stop shop for all things vinyl records, bringing back the retro vibes."
        },
        {
            question: "How can I track my order?",
            answer: "Once you place an order, you can track it through your account under 'Order History.'"
        },
        {
            question: "What is your return policy?",
            answer: "We accept returns within 30 days of purchase. Items must be in their original condition."
        },
        {
            question: "How can I contact customer support?",
            answer: "You can contact us via the 'Contact Us' page or email us at support@groovy.com."
        }
    ];

    return (
        <div className="container mx-auto px-6 py-12">
            <h2 className="text-4xl font-bold text-center mb-8 text-orange-900" style={{ fontFamily: "'Caprasimo', cursive", }}>
                Frequently Asked Questions
            </h2>
            <div className="space-y-6">
                {faqs.map((faq, index) => (
                    <div key={index} className="bg-yellow-100 p-6 rounded-lg shadow-md">
                        <h3 className="text-2xl font-semibold text-orange-800">{faq.question}</h3>
                        <p className="mt-2 text-gray-700">{faq.answer}</p>
                    </div>
                ))}
            </div>
        </div>
    );
};

export default FAQPage;
