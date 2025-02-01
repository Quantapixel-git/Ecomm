import 'package:flutter/material.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var faq = [
      {
        'title': 'How do I place an order?',
        'description':
            'To place an order, browse our products, select the items you want to buy, add them to your cart, and proceed to checkout. Follow the instructions to complete the payment process.'
      },
      {
        'title': 'What payment methods do you accept?',
        'description':
            'We accept various payment methods including credit/debit cards, PayPal, and other popular payment gateways. You can select your preferred payment method during checkout.'
      },
      {
        'title': 'Can I modify or cancel my order?',
        'description':
            'Once your order has been confirmed, it cannot be modified or canceled. However, you can contact our customer support team if there is an issue with your order.'
      },
      {
        'title': 'Do you offer free shipping?',
        'description':
            'We offer free shipping on orders over a certain amount. Check our shipping policy for more details on free shipping eligibility and available shipping options.'
      },
      {
        'title': 'How do I track my order?',
        'description':
            'After placing your order, you will receive an email with a tracking number. You can use this number to track the status of your order via our courier partner’s website.'
      },
      {
        'title': 'What is your return and refund policy?',
        'description':
            'We offer a 30-day return policy for most items. If you are not satisfied with your purchase, you can return it within 30 days for a full refund, subject to our return policy terms and conditions.'
      },
      {
        'title': 'Do you ship internationally?',
        'description':
            'Yes, we do ship internationally to many countries. Shipping fees and delivery times vary depending on your location. Please check our shipping page for international shipping rates.'
      },
      {
        'title': 'How can I contact customer support?',
        'description':
            'You can contact our customer support team by visiting the "Contact Us" page on our website or by emailing support@ecommerce.com. Our team is available 24/7 to assist you.'
      },
      {
        'title': 'Can I apply discount codes to my order?',
        'description':
            'Yes, you can apply valid discount codes during the checkout process. Enter the code in the designated field and the discount will be applied to your order total.'
      },
      {
        'title': 'Are the prices displayed including tax?',
        'description':
            'The prices displayed on our website are exclusive of taxes. Taxes will be calculated at checkout based on your shipping address.'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("FAQ's"),
      ),
      body: ListView.builder(
        itemCount: faq.length,
        itemBuilder: (context, index) {
          final currentFAQ = faq[index];

          return ExpansionTile(
            title: Text(currentFAQ['title'] as String,
                style: Theme.of(context).textTheme.titleMedium),
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 16.0, left: 16.0, right: 16.0),
                child: Text(
                  currentFAQ['description'] as String,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
