import 'package:flutter/material.dart';

class RaiseTicketScreen extends StatefulWidget {
  RaiseTicketScreen({super.key});

  @override
  State<RaiseTicketScreen> createState() => _RaiseTicketScreenState();
}

class _RaiseTicketScreenState extends State<RaiseTicketScreen> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  final TextEditingController ticketNameController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  String selectedPriority = '';
  List<String> ticketType = [
    'Select Ticket Types',
    'Incident',
    'Problem',
    'Suggestion',
    'Question'
  ];
  String selectedType = 'Select Ticket Types';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create a Ticket'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Form(
            key: _key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ticket Name',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: 10),
                TextFormField(
                  validator: (value) {
                    if (value == '' || value!.isEmpty) {
                      return 'Ticket Name can\'t be Empty ';
                    } else if (selectedPriority == '') {
                      return 'Select ticket Priority';
                    }
                    return null;
                  },
                  controller: ticketNameController,
                  decoration: InputDecoration(
                    label: Text('Enter Ticket'),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Ticket Priority',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          selectedPriority = 'Low';
                          setState(() {});
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: selectedPriority == 'Low'
                                  ? Colors.green.shade50
                                  : Colors.grey.shade50,
                              border: Border.all(
                                  color: selectedPriority == 'Low'
                                      ? Colors.green.shade400
                                      : Colors.grey.shade300,
                                  width: 1)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.circle_rounded,
                                color: Colors.green,
                                size: 16,
                              ),
                              Text(' Low',
                                  style: Theme.of(context).textTheme.bodyLarge)
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          selectedPriority = 'Medium';
                          setState(() {});
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: selectedPriority == 'Medium'
                                  ? Colors.yellow.shade50
                                  : Colors.grey.shade50,
                              border: Border.all(
                                  color: selectedPriority == 'Medium'
                                      ? Colors.yellow.shade400
                                      : Colors.grey.shade300,
                                  width: 1)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.circle_rounded,
                                color: Colors.yellow,
                                size: 16,
                              ),
                              Text(' Medium',
                                  style: Theme.of(context).textTheme.bodyLarge)
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          selectedPriority = 'High';
                          setState(() {});
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: selectedPriority == 'High'
                                  ? Colors.red.shade100
                                  : Colors.grey.shade50,
                              border: Border.all(
                                  color: selectedPriority == 'High'
                                      ? Colors.red.shade200
                                      : Colors.grey.shade300,
                                  width: 1)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.circle_rounded,
                                color: Colors.redAccent,
                                size: 12,
                              ),
                              Text(' High',
                                  style: Theme.of(context).textTheme.bodyLarge)
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Ticket Type',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: 15),
                DropdownButtonFormField(
                    borderRadius: BorderRadius.circular(20),
                    dropdownColor: Colors.white,
                    validator: (value) {
                      if (value == 'Select Ticket Types') {
                        return 'Please select Ticket Type';
                      }
                      return null;
                    },
                    decoration: InputDecoration(labelText: 'Ticket Type'),
                    value: selectedType,
                    items: ticketType
                        .map(
                          (value) => DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      selectedType = value!;
                      setState(() {});
                    }),
                SizedBox(height: 20),
                Text(
                  'Message',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: messageController,
                  validator: (value) {
                    if (value == '' || value!.isEmpty) {
                      return 'Message can\'t be Empty ';
                    }
                    return null;
                  },
                  maxLines: 8,
                  decoration: InputDecoration(
                      labelText: 'Enter Your Message',
                      border: OutlineInputBorder()),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurpleAccent.shade200),
          onPressed: () {
            if (_key.currentState?.validate() ?? false) {
              messageController.clear();
              ticketNameController.clear();
              selectedType == 'Select Ticket Types';
              selectedPriority = '';
              setState(() {});
            }
          },
          child: Text(
            'Submit Ticket',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 18,
                letterSpacing: 1),
          ),
        ),
      ),
    );
  }
}
