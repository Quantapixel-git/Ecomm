import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  List<String> categoryList = categoriesMap.keys.toList();
  String currentKey = categoriesMap.keys.toList()[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: ListView.builder(
              itemCount: categoryList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      currentKey = categoryList[index];
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: currentKey == categoryList[index]
                            ? Colors.white
                            : Colors.grey,
                        border: Border(
                            left: BorderSide(
                                color: currentKey == categoryList[index]
                                    ? Colors.deepPurple
                                    : Colors.white,
                                width: 5),
                            top: BorderSide(color: Colors.white, width: 1))),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Icon(Icons.ac_unit),
                        Center(
                          child: Text(
                            categoryList[index],
                            style: TextStyle(color: Colors.black, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(width: 5),
          Expanded(
            flex: 5,
            child: GridView.builder(
              itemCount: categoriesMap[currentKey]?.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 2, mainAxisSpacing: 2),
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Center(
                    child: Text(
                      categoriesMap[currentKey]![index],
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

Map<String, List<String>> categoriesMap = {
  'Electronics': [
    'Mobiles & Tablets',
    'Laptops',
    'Headphones',
    'Cameras',
    'Smartwatches',
    'Gaming Consoles',
  ],
  'Fashion': [
    'Men’s Clothing',
    'Women’s Clothing',
    'Footwear',
    'Watches',
    'Bags & Wallets',
    'Jewelry'
  ],
  'Groceries': [
    'Fruits & Vegetables',
    'Dairy & Bakery',
    'Snacks & Beverages',
    'Grains & Pulses',
    'Spices & Masala',
    'Cleaning Supplies'
  ],
  'Home & Kitchen': [
    'Kitchen Appliances',
    'Cookware',
    'Furniture',
    'Home Decor',
    'Storage & Containers',
    'Bedding & Bath'
  ],
  'Beauty & Personal Care': [
    'Skin Care',
    'Hair Care',
    'Makeup',
    'Fragrances',
    'Men\'s Grooming',
    'Bath & Body'
  ],
  'Books & Stationery': [
    'Academic Books',
    'Novels & Literature',
    'OfficeSupplies',
    'Art & Craft',
    'Diaries & Notebooks',
    'Educational Toys'
  ],
  'Toys & Baby Products': [
    'Baby Care',
    'Educational Toys',
    'Soft Toys',
    'Action Figures',
    'Outdoor Play',
    'Kids Clothing'
  ],
  'Sports & Fitness': [
    'Gym Equipment',
    'Sportswear',
    'Yoga Mats',
    'Supplements',
    'Outdoor Gear',
    'Footwear'
  ],
  'Automotive': [
    'Car Accessories',
    'Bike Accessories',
    'Oils & Lubricants',
    'Car Electronics',
    'Helmets',
    'Cleaning Tools'
  ],
  'Pet Supplies': [
    'Dog Food',
    'Cat Food',
    'Toys ',
    'Grooming',
    'Bedding & Crates',
    'Healthcare'
  ]
};
