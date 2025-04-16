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
                            : Colors.grey.shade200,
                        border: Border(
                            left: BorderSide(
                                color: currentKey == categoryList[index]
                                    ? Colors.deepPurple
                                    : Colors.grey,
                                width: 5),
                            top: BorderSide(color: Colors.white, width: 1))),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              'https://content.jdmagicbox.com/rep/b2b/fmcg-products/fmcg-products-9.jpg'),
                        ),
                        Text(
                          categoryList[index],
                          style: TextStyle(color: Colors.black, fontSize: 10),
                          textAlign: TextAlign.center,
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
            flex: 6,
            child: GridView.builder(
              itemCount: categoriesMap[currentKey]?.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 2, mainAxisSpacing: 2),
              itemBuilder: (context, index) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                          fit: BoxFit.cover,
                          height: 50,
                          'https://content.jdmagicbox.com/rep/b2b/fmcg-products/fmcg-products-9.jpg'),
                      Text(
                        categoriesMap[currentKey]![index]['label']!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 12,
                        ),
                      ),
                    ],
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

Map<String, List<Map<String, String>>> categoriesMap = {
  'Electronics': [
    {'img_src': '', 'label': 'Mobiles & Tablets'},
    {'img_src': '', 'label': 'Laptops'},
    {'img_src': '', 'label': 'Headphones'},
    {'img_src': '', 'label': 'Cameras'},
    {'img_src': '', 'label': 'Smartwatches'},
    {'img_src': '', 'label': 'Gaming Consoles'},
  ],
  'Fashion': [
    {'img_src': '', 'label': 'Men’s Clothing'},
    {'img_src': '', 'label': 'Women’s Clothing'},
    {'img_src': '', 'label': 'Footwear'},
    {'img_src': '', 'label': 'Watches'},
    {'img_src': '', 'label': 'Bags & Wallets'},
    {'img_src': '', 'label': 'Jewelry'},
  ],
  'Groceries': [
    {'img_src': '', 'label': 'Fruits & Vegetables'},
    {'img_src': '', 'label': 'Dairy & Bakery'},
    {'img_src': '', 'label': 'Snacks & Beverages'},
    {'img_src': '', 'label': 'Grains & Pulses'},
    {'img_src': '', 'label': 'Spices & Masala'},
    {'img_src': '', 'label': 'Cleaning Supplies'},
  ],
  'Home & Kitchen': [
    {'img_src': '', 'label': 'Kitchen Appliances'},
    {'img_src': '', 'label': 'Cookware'},
    {'img_src': '', 'label': 'Furniture'},
    {'img_src': '', 'label': 'Home Decor'},
    {'img_src': '', 'label': 'Storage & Containers'},
    {'img_src': '', 'label': 'Bedding & Bath'},
  ],
  'Beauty & Personal Care': [
    {'img_src': '', 'label': 'Skin Care'},
    {'img_src': '', 'label': 'Hair Care'},
    {'img_src': '', 'label': 'Makeup'},
    {'img_src': '', 'label': 'Fragrances'},
    {'img_src': '', 'label': 'Men\'s Grooming'},
    {'img_src': '', 'label': 'Bath & Body'},
  ],
  'Books & Stationery': [
    {'img_src': '', 'label': 'Academic Books'},
    {'img_src': '', 'label': 'Novels & Literature'},
    {'img_src': '', 'label': 'Office Supplies'},
    {'img_src': '', 'label': 'Art & Craft'},
    {'img_src': '', 'label': 'Diaries & Notebooks'},
    {'img_src': '', 'label': 'Educational Toys'},
  ],
  'Toys & Baby Products': [
    {'img_src': '', 'label': 'Baby Care'},
    {'img_src': '', 'label': 'Educational Toys'},
    {'img_src': '', 'label': 'Soft Toys'},
    {'img_src': '', 'label': 'Action Figures'},
    {'img_src': '', 'label': 'Outdoor Play'},
    {'img_src': '', 'label': 'Kids Clothing'},
  ],
  'Sports & Fitness': [
    {'img_src': '', 'label': 'Gym Equipment'},
    {'img_src': '', 'label': 'Sportswear'},
    {'img_src': '', 'label': 'Yoga Mats'},
    {'img_src': '', 'label': 'Supplements'},
    {'img_src': '', 'label': 'Outdoor Gear'},
    {'img_src': '', 'label': 'Footwear'},
  ],
  'Automotive': [
    {'img_src': '', 'label': 'Car Accessories'},
    {'img_src': '', 'label': 'Bike Accessories'},
    {'img_src': '', 'label': 'Oils & Lubricants'},
    {'img_src': '', 'label': 'Car Electronics'},
    {'img_src': '', 'label': 'Helmets'},
    {'img_src': '', 'label': 'Cleaning Tools'},
  ],
  'Pet Supplies': [
    {'img_src': '', 'label': 'Dog Food'},
    {'img_src': '', 'label': 'Cat Food'},
    {'img_src': '', 'label': 'Toys'},
    {'img_src': '', 'label': 'Grooming'},
    {'img_src': '', 'label': 'Bedding & Crates'},
    {'img_src': '', 'label': 'Healthcare'},
  ],
};
