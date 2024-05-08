import 'package:flutter/material.dart';

class BusinessCardWidget extends StatefulWidget {
  const BusinessCardWidget({super.key});

  @override
  State<BusinessCardWidget> createState() => _BusinessCardWidgetState();
}

class _BusinessCardWidgetState extends State<BusinessCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      child: Expanded(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white
          ),
          child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text("Grow Your Business", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),),
                      ),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward, color: Colors.white,))
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("assets/adwords.png", height: 30, width: 30,),
                          const SizedBox(width: 8),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Create Ads", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                              SizedBox(height: 5,),
                              Text("Get seen by more customers on Zomato", style: TextStyle(fontSize: 12, color: Colors.grey), maxLines: 1, overflow: TextOverflow.ellipsis,),],
                          ),

                        ],
                      ),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios))

                    ],
                  ),
                ),
                const Divider(thickness: 1.5,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("assets/star.png", height: 30, width: 30,),
                          const SizedBox(width: 8),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Improve Customer Feedback", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                              SizedBox(height: 5,),
                              Text("Resolve Complaints to build customer loyalty", style: TextStyle(fontSize: 12, color: Colors.grey), maxLines: 1, overflow: TextOverflow.ellipsis,),
                            ],
                          ),
                        ],
                      ),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios))
                    ],
                  ),
                ),
                const Divider(thickness: 1.5,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/percent.png", height: 30, width: 30,),
                          const SizedBox(width: 8),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Create offers & discounts", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                              SizedBox(height: 5,),
                              Text("Get seen by more customers on Zomato", style: TextStyle(fontSize: 12, color: Colors.grey),),
                            ],
                          ),
                        ],
                      ),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios))
                    ],
                  ),
                ),
              ],
          ),
        ),
      ),
    );
  }
}
