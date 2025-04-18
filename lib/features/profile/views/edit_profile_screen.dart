import 'package:ecom/constants.dart';
import 'package:ecom/features/profile/components/edit_profile_field.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.text = "Pratham";
    _emailController.text = "PrathamBhatnagar313@gmail.com";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  "https://www.snitch.co.in/cdn/shop/files/4mst2343-02-m-16.jpg?v=1738065369&width=1080",
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            EditProfileField(
              controller: _nameController,
              label: "Name",
            ),
            EditProfileField(
              controller: _emailController,
              label: "Email",
            ),
            EditProfileField(
              controller: _emailController,
              label: "Gender",
            ),
            Text(
              "Gender",
            ),
            Row(
              children: [
                Expanded(
                  child: RadioListTile(
                    title: Text("Male"),
                    value: 'male',
                    selected: true,
                    groupValue: ['male', 'female'],
                    onChanged: (value) {},
                  ),
                ),
                Expanded(
                  child: RadioListTile(
                    title: Text("Female"),
                    value: 'female',
                    groupValue: ['male', 'female'],
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Update Profile"))
          ],
        ),
      ),
    );
  }
}
