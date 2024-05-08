import 'package:banty_hub/feedback/widgets/filter_widget.dart';
import 'package:banty_hub/feedback/widgets/header_widget.dart';
import 'package:banty_hub/feedback/widgets/user_widget.dart';
import 'package:flutter/material.dart';
class FeedBackScreen extends StatefulWidget {
  const FeedBackScreen({super.key});

  @override
  State<FeedBackScreen> createState() => _FeedBackScreenState();
}

class _FeedBackScreenState extends State<FeedBackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              HeaderWidget(),
              const SizedBox(height: 16,),
              UserWidget()
            ],
          ),
        ),
      ),
    );
  }
}
