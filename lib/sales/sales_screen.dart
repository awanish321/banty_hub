import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class SalesOverviewScreen extends StatefulWidget {
  const SalesOverviewScreen({super.key});

  @override
  State<SalesOverviewScreen> createState() => _SalesOverviewScreenState();
}

class _SalesOverviewScreenState extends State<SalesOverviewScreen> {
  String _selectedPeriod = 'Daily';
  DateTime _selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2025),
    );

    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 60,
                decoration: const BoxDecoration(
                  color: Colors.white
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomButton(
                        label: 'Daily',
                        isSelected: _selectedPeriod == 'Daily',
                        onPressed: () {
                          setState(() {
                            _selectedPeriod = 'Daily';
                          });
                        },
                      ),
                      CustomButton(
                        label: 'Weekly',
                        isSelected: _selectedPeriod == 'Weekly',
                        onPressed: () {
                          setState(() {
                            _selectedPeriod = 'Weekly';
                          });
                        },
                      ),
                      CustomButton(
                        label: 'Monthly',
                        isSelected: _selectedPeriod == 'Monthly',
                        onPressed: () {
                          setState(() {
                            _selectedPeriod = 'Monthly';
                          });
                        },
                      ),
                      CustomButton(
                        label: 'Quarterly',
                        isSelected: _selectedPeriod == 'Quarterly',
                        onPressed: () {
                          setState(() {
                            _selectedPeriod = 'Quarterly';
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              DateCard(
                date: DateFormat('EEE, MMM d, yyyy').format(_selectedDate),
                onDateChanged: _selectDate,
              ),
              const SalesOverviewCard(
                title: 'Sales overview',
                todaySales: '₹ 2400',
                previousDaySales: '₹ 2300',
                deliveredOrders: '15',
                averageOrderValue: '₹ 175',
                isPositive: true,
              ),
              const SizedBox(height: 25,),
              const CustomerFunnelCard(
                title: 'Customer funnel',
                impressionsInSearches: '100',
                ordersFromAds: '20',
                salesFromPushNotification: '10',
                salesFromNewOffer: '10',
                isPositive: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onPressed;

  const CustomButton({super.key,
    required this.label,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected ? Colors.green : Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.green, width: 2)
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.green,
          ),
        ),
      ),
    );
  }
}

class SalesOverviewCard extends StatelessWidget {
  final String title;
  final String todaySales;
  final String previousDaySales;
  final String deliveredOrders;
  final String averageOrderValue;
  final bool isPositive;

  const SalesOverviewCard({super.key,
    required this.title,
    required this.todaySales,
    required this.previousDaySales,
    required this.deliveredOrders,
    required this.averageOrderValue,
    required this.isPositive,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 8,
        shadowColor: Colors.grey.withOpacity(0.3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/trend.png", height: 30, width: 30,),
                      const SizedBox(width: 10,),
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.info_outline, color: Colors.grey.withOpacity(0.5), size: 18,),
                    ],
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          // Handle details action
                        },
                        child: const Text(
                          'Details',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_circle_right_outlined, color: Colors.blue.withOpacity(0.7), size: 15,)
                    ],
                  ),
                ],
              ),
            ),
            const Divider(),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Today\'s Sales', style: TextStyle(fontSize: 15, color: Colors.blueGrey, fontWeight: FontWeight.w600),),
                  Row(
                    children: [
                      Text(
                        todaySales,
                        style: const TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.w600,
                          fontSize: 15
                        ),),
                      const SizedBox(width: 5,),
                      const Text('+5%', style: TextStyle(color: Colors.green, fontSize: 10),),
                      const Icon(Icons.arrow_upward, size: 10, color: Colors.green,)
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Previous Day Sales', style: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w600),),
                  Row(
                    children: [
                      Text(
                        previousDaySales,
                        style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: 14
                        ),),
                      const SizedBox(width: 5,),
                      const Text('+4%', style: TextStyle(color: Colors.green, fontSize: 10),),
                      const Icon(Icons.arrow_upward, size: 10, color: Colors.green,)
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16,),
            Divider(),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Delivered orders', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey),),
                  Row(
                    children: [
                      Text(
                        deliveredOrders,
                        style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: 15
                        ),),
                      const SizedBox(width: 5,),
                      const Text('-3%', style: TextStyle(color: Colors.red, fontSize: 10),),
                      const Icon(Icons.arrow_downward, size: 10, color: Colors.red,)
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16,),
            Divider(),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Average order value', style: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w600),),
                  Row(
                    children: [
                      Text(
                        averageOrderValue,
                        style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: 14
                        ),),
                      const SizedBox(width: 5,),
                      const Text('-2%', style: TextStyle(color: Colors.red, fontSize: 10),),
                      const Icon(Icons.arrow_downward, size: 10, color: Colors.red,),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}

class CustomerFunnelCard extends StatelessWidget {
  final String title;
  final String impressionsInSearches;
  final String ordersFromAds;
  final String salesFromPushNotification;
  final String salesFromNewOffer;
  final bool isPositive;

  const CustomerFunnelCard({super.key,
    required this.title,
    required this.impressionsInSearches,
    required this.ordersFromAds,
    required this.salesFromPushNotification,
    required this.salesFromNewOffer,
    required this.isPositive,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          shadowColor: Colors.grey.withOpacity(0.3),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset("assets/filter.png", height: 30, width: 30,),
                  const SizedBox(width: 10,),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      // Handle details action
                    },
                    child: const Text(
                      'Details',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Icon(Icons.arrow_circle_right_outlined, size: 15, color: Colors.blue,)
                ],
              ),
            ],
            ),
          ),
            Divider(),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Impressions in Searches', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),),
                  Row(
                    children: [
                      Text(
                        impressionsInSearches,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      const SizedBox(width: 5,),
                      Text("+2%", style: TextStyle(color: Colors.green, fontSize: 10),),
                      Icon(Icons.arrow_upward, size: 10, color: Colors.green,)


                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Orders through Ads', style: TextStyle(color: Colors.grey),),
                  Row(
                    children: [
                      Text(
                        ordersFromAds,
                        style: TextStyle(
                        ),
                      ),
                      const SizedBox(width: 5,),
                      Text("+3", style: TextStyle(fontSize: 10, color: Colors.green),),
                      Icon(Icons.arrow_upward, size: 10, color: Colors.green,)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sales through Push Notification', style: TextStyle(color: Colors.grey),),
                  Row(
                    children: [
                      Text(
                        salesFromPushNotification,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(width: 5,),
                      Text("+3", style: TextStyle(fontSize: 10, color: Colors.green),),
                      Icon(Icons.arrow_upward, size: 10, color: Colors.green,)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sales through New offer', style: TextStyle(color: Colors.grey),),
                  Row(
                    children: [
                      Text(
                        salesFromNewOffer,
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(width: 5,),
                      Text("+3", style: TextStyle(fontSize: 10, color: Colors.green),),
                      Icon(Icons.arrow_upward, size: 10, color: Colors.green,)
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,)
          ],
          ),
      ),
    );
  }
}

class DateCard extends StatelessWidget {
  final String date;
  final Function(BuildContext) onDateChanged;

  const DateCard({super.key, required this.date, required this.onDateChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                // Handle date navigation
              },
              icon: const Icon(Icons.arrow_left_outlined, size: 35,),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    onDateChanged(context);
                  },
                  child: Text(
                    date,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                  ),
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down_outlined))
              ],
            ),

            IconButton(
              onPressed: () {
                // Handle date navigation
              },
              icon: Icon(Icons.arrow_right_outlined, size: 35,),
            ),
          ],
        ),
      ),
    );
  }
}