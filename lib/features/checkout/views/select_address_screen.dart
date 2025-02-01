import 'package:ecom/core/common/models/address_model.dart';
import 'package:ecom/core/common/widgets/address_card.dart';
import 'package:ecom/route/screen_export.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SelectAddressScreen extends StatefulWidget {
  const SelectAddressScreen({super.key});

  @override
  State<SelectAddressScreen> createState() => _SelectAddressScreenState();
}

class _SelectAddressScreenState extends State<SelectAddressScreen> {
  String? _selectedAddressId;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Address"),
        actions: [
          // TextButton(
          //   onPressed: () {},
          //   child: Text("Add new"),
          // )
        ],
      ),
      body: ListView.builder(
        itemCount: address.length,
        itemBuilder: (context, index) {
          return AddressCard(
            selectedAddressId: _selectedAddressId,
            address: address[index],
            onTap: (address) {
              setState(() {
                _selectedAddressId = address.id;
              });
            },
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                context.go(FullRouteName.checkoutSummary);
              },
              child: Text("Continue"),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
