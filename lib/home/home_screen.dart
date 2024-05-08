import 'package:banty_hub/home/widgets/category_slider_widget.dart';
import 'package:banty_hub/home/widgets/quick_links_widget.dart';
import 'package:banty_hub/home/widgets/slider_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/business_card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SliderScreen(),
                SizedBox(height: 16,),
                CategorySlider(),
                SizedBox(height: 16,),
                QuickLinksScreen(),
                SizedBox(height: 16,),
                BusinessCardWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
