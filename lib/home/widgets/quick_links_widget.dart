import 'package:flutter/material.dart';

class QuickLinksScreen extends StatelessWidget {
  const QuickLinksScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Quick Links",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: QuickLinkContainer(
                  image: 'assets/basket.png',
                  label: 'My Orders',
                ),
              ),
              SizedBox(width: 14),
              Expanded(
                child: QuickLinkContainer(
                  image: 'assets/shopping-cart.png',
                  label: 'Previous Orders',
                ),
              ),
              SizedBox(width: 14),
              Expanded(
                child: QuickLinkContainer(
                  image: 'assets/earphones.png',
                  label: 'Help Center',
                ),
              ),
              SizedBox(width: 14),
              Expanded(
                child: QuickLinkContainer(
                  image: 'assets/agreement.png',
                  label: 'Contract',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class QuickLinkContainer extends StatelessWidget {
  final String image;
  final String label;

  const QuickLinkContainer({super.key, required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.2,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Image.asset(
              image,
              width: 40,
              height: 40,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            label,
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
