import 'package:ecom/constants.dart';
import 'package:ecom/core/common/models/address_model.dart';
import 'package:ecom/core/common/widgets/address_card.dart';
import 'package:flutter/material.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final address = [
      AddressModel(
        id: "1",
        title: "Home",
        pinCode: "250002",
        address: "Ramlila Ground Delhi Road, Meerut",
        phone: "9012131415",
        email: "Vishal@gmail.com",
      ),
      AddressModel(
        id: "2",
        title: "2nd Home",
        pinCode: "250002",
        address: "Madhavpuram Delhi Road, Meerut",
        phone: "9012131415",
        email: "Vishal@gmail.com",
      ),
      AddressModel(
        id: "3",
        title: "Ofice",
        pinCode: "250002",
        address: "Gurugram nagar, New Delhi ",
        phone: "9012131415",
        email: "Vishal@gmail.com",
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Address"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Available Address",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: address.length,
            itemBuilder: (context, index) {
              final currentAddress = address[index];
              return AddressCard(
                address: currentAddress,
                onTap: (address) {},
              );
            },
          ),
        ],
      ),
    );
  }
}
