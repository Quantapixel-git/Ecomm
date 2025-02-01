import 'package:ecom/constants.dart';
import 'package:ecom/core/common/models/address_model.dart';
import 'package:flutter/material.dart';

class AddressCard extends StatelessWidget {
  final AddressModel address;
  final Function(AddressModel address) onTap;
  final String? selectedAddressId;

  const AddressCard({
    super.key,
    required this.address,
    required this.onTap,
    this.selectedAddressId,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(address);
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20.0),
        margin: EdgeInsets.only(bottom: 16.0, left: 16, right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: greyColor40),
          color: address.id == selectedAddressId
              ? greyColor20
              : Colors.transparent,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              address.title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              address.address,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              "Pin Code : ${address.pinCode}",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              "Phone : ${address.phone}",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              "Email : ${address.email}",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
