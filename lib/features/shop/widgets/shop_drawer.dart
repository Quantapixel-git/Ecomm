import 'package:flutter/material.dart';

class ShopDrawer extends StatefulWidget {
  const ShopDrawer({super.key});

  @override
  State<ShopDrawer> createState() => _ShopDrawerState();
}

class _ShopDrawerState extends State<ShopDrawer> {
  bool isEarPhone = false;
  bool isHeadPhone = false;
  bool isPhone = false;
  bool isTablet = false;
  bool isLaptop = false;
  bool isSmartWatch = false;
  bool isCamera = false;

  double min = 86;
  double max = 500;
  late double priceValue;
  @override
  void initState() {
    super.initState();
    priceValue = min;
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey.shade200,
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
          width: MediaQuery.of(context).size.width,
          child: ListView(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Price',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Colors.black87, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Maximum price is ₹$max',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w500),
                      ),
                      GestureDetector(
                        child: Text(
                          'Reset',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  ),
                ),
                Slider(
                  activeColor: Colors.grey.shade800,
                  inactiveColor: Colors.grey,
                  value: priceValue,
                  onChanged: (value) {
                    setState(() {
                      priceValue = value;
                    });
                  },
                  min: min,
                  max: max,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('From',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.shade500)),
                          Container(
                            height: 45,
                            width: 100,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              '₹  ${min.toString()}',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey.shade600),
                            ),
                          ),
                        ],
                      ),
                      Text('-',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade600)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('To',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.shade500)),
                          Container(
                            height: 45,
                            width: 100,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              '₹  ${priceValue.toString()}',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey.shade600),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Categories',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black87)),
                      ),
                      checkBoxBuilder(
                        label: "Earphone",
                        value: isEarPhone,
                        onChanged: (val) => setState(() => isEarPhone = val!),
                      ),
                      checkBoxBuilder(
                        label: "Headphone",
                        value: isHeadPhone,
                        onChanged: (val) => setState(() => isHeadPhone = val!),
                      ),
                      checkBoxBuilder(
                        label: "Phone",
                        value: isPhone,
                        onChanged: (val) => setState(() => isPhone = val!),
                      ),
                      checkBoxBuilder(
                        label: "Tablet",
                        value: isTablet,
                        onChanged: (val) => setState(() => isTablet = val!),
                      ),
                      checkBoxBuilder(
                        label: "Laptop",
                        value: isLaptop,
                        onChanged: (val) => setState(() => isLaptop = val!),
                      ),
                      checkBoxBuilder(
                        label: "Smart Watch",
                        value: isSmartWatch,
                        onChanged: (val) => setState(() => isSmartWatch = val!),
                      ),
                      checkBoxBuilder(
                        label: "Camera",
                        value: isCamera,
                        onChanged: (val) => setState(() => isCamera = val!),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

Widget checkBoxBuilder({
  required String label,
  required bool value,
  required Function(bool?) onChanged,
}) {
  return CheckboxListTile(
    activeColor: Colors.grey.shade600,
    value: value,
    onChanged: onChanged,
    title: Text(label, style: TextStyle(fontSize: 14)),
    controlAffinity: ListTileControlAffinity.leading,
    dense: true,
    visualDensity: VisualDensity.compact,
    contentPadding: EdgeInsets.symmetric(horizontal: 10),
  );
}
