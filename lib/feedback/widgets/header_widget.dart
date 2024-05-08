import 'package:banty_hub/feedback/widgets/filter_widget.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Feedback", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.search)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.menu))
                  ],
                )
              ],
            ),
            Divider(),
            FilterWidget(),
            Divider(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/exclamation.png", height: 25, width: 25,),
                const SizedBox(width: 5,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("2 open complaints", style: TextStyle(fontSize: 15),),
                    Row(
                      children: [
                        Text("Act now for higher customer retention.", style: TextStyle(fontSize: 13, color: Colors.grey),),
                        TextButton(onPressed: (){}, child: Text("View Policy", style: TextStyle(color: Colors.blue, ),))
                      ],
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 16,)
          ],
        ),
      ),
    );
  }
}
