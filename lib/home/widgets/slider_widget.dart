import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  int _currentSliderIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 40),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            child: CarouselSlider(
              items: [
                _buildCircularImageWidget('https://i.ytimg.com/vi/NOGOtX5n5F8/maxresdefault.jpg'),
              _buildCircularImageWidget('https://ezmedya.com/images/banner-slider-nedir_318732.webp'),
              _buildCircularImageWidget('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1PJGqNarRIR4QWnrGySUA8vlZZ3OORs-MjS6kv6sTT1FBp9D8W9tnOVrEhXA-VQ2bcyc&usqp=CAU'),
              ],
              options: CarouselOptions(
                height: 170,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration:
                    const Duration(milliseconds: 800),
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentSliderIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(right: 40),
          child: CarouselIndicator(
            totalPage: 3,
            activePageIndex: _currentSliderIndex,
            indicatorColor: Colors.grey,
            activeIndicatorColor: Colors.blue,
            space: 8,
          ),
        ),
      ],
    );
  }
}

Widget _buildCircularImageWidget(String imageUrl) {
  return ClipRRect(
    borderRadius: const BorderRadius.only(
      topRight: Radius.circular(20),
      bottomRight: Radius.circular(20),
    ),
    child: Expanded(
      child: SizedBox(
        width: double.infinity,
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}

class CarouselIndicator extends StatelessWidget {
  final int totalPage;
  final int activePageIndex;
  final Color indicatorColor;
  final Color activeIndicatorColor;
  final double space;

  const CarouselIndicator({
    super.key,
    required this.totalPage,
    required this.activePageIndex,
    this.indicatorColor = Colors.grey,
    this.activeIndicatorColor = Colors.blue,
    this.space = 8,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(totalPage, (index) {
        return Container(
          width: 8,
          height: 8,
          margin: EdgeInsets.symmetric(horizontal: space / 2),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == activePageIndex
                ? activeIndicatorColor
                : indicatorColor,
          ),
        );
      }),
    );
  }
}
