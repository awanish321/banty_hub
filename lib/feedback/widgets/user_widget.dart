import 'package:flutter/material.dart';

class UserWidget extends StatefulWidget {
  const UserWidget({super.key});

  @override
  State<UserWidget> createState() => _UserWidgetState();
}

class _UserWidgetState extends State<UserWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent.withOpacity(0.4),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Wrong items delivered",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFFC62828)),
                    ),
                    SizedBox(
                        height: 30,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0XFFC62828)),
                            onPressed: () {},
                            child: const Text('OPEN')))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                            "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?size=626&ext=jpg&ga=GA1.1.553209589.1715040000&semt=sph"),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sameer Sharma",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black87),
                          ),
                          Text(
                            "10th order",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Rated: ",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                shape: BoxShape.rectangle,
                                color: Colors.red),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 2),
                              child: Row(
                                children: [
                                  Text("1.0"),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 15,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "View Reviews",
                            style: TextStyle(fontSize: 12, color: Colors.blue),
                          ))
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,),
              child: TextFormField(
                decoration: InputDecoration(
                  hintStyle: const TextStyle(fontSize: 14),
                  hintText: 'received mango tree and pot',
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.cyanAccent),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                ),
              ),
            ),
            
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("issue items"),
                      Text(" (2 out of 4)", style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                  TextButton(onPressed: (){}, child: Text("Order details", style: TextStyle(color: Colors.blue, fontSize: 13),))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.info_outline, color: Colors.red.withOpacity(0.5), size: 16,),
                      Text(" 2 x 2 Palms Small on ceramic", style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                  Text("₹300", style: TextStyle(color: Colors.grey),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.info_outline, color: Colors.red.withOpacity(0.5), size: 16,),
                      Text(" 2 x 2 Palms Small on ceramic", style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                  Text("₹300", style: TextStyle(color: Colors.grey),)
                ],
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Image.network("https://img.freepik.com/premium-photo/small-bonsai-tree-ceramic-pot-bonsai-pruning-tools-wooden-table_35674-3703.jpg",),
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("Refund requested: "),
                      Text("₹650", style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                  Text("Expire in 3 days", style: TextStyle(color: Colors.red),)
                ],
              ),
            ),

            BottomButtons(),
            const SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}


class BottomButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomButton(
                  text: 'Decline',
                  backgroundColor: Colors.grey, // Disabled button color
                  textColor: Colors.white,
                  onPressed: null, // Disabled button doesn't have action
                ),
                SizedBox(width: 10),
                CustomButton(
                  text: 'Accept',
                  backgroundColor: Colors.green,
                  textColor: Colors.white,
                  onPressed: () {
                    print('Accept button pressed');
                  },
                ),
              ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback? onPressed;

  const CustomButton({
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: TextStyle(color: textColor, fontSize: 16),
      ),
    );
  }
}

