import 'package:ecom/constants.dart';
import 'package:flutter/material.dart';

class EditProfileField extends StatelessWidget {
  final TextEditingController controller;
  final String label;

  const EditProfileField({
    super.key,
    required this.controller,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
                color: blackColor,
              ),
        ),
        SizedBox(
          height: 8.0,
        ),
        TextFormField(
          controller: controller,
          onSaved: (emal) {
            // Email
          },
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.text,
        ),
        SizedBox(
          height: 16.0,
        ),
      ],
    );
  }
}
