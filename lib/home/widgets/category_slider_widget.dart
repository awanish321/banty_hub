// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
//
// class CategorySlider extends StatefulWidget {
//   const CategorySlider({super.key});
//
//   @override
//   State<CategorySlider> createState() => _CategorySliderState();
// }
//
// class _CategorySliderState extends State<CategorySlider> {
//   int _currentSliderIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return  Column(
//       children: [
//         CarouselSlider(
//           items: [
//             Container(
//               decoration: const BoxDecoration(
//                 color: Colors.white
//               ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text("Business Report", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
//                         IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward))
//                       ],
//                     ),
//                     _buildCircularImageWidget('https://i.ytimg.com/vi/NOGOtX5n5F8/maxresdefault.jpg')
//                   ],
//                 )
//             ),
//             _buildCircularImageWidget('https://ezmedya.com/images/banner-slider-nedir_318732.webp'),
//             _buildCircularImageWidget('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1PJGqNarRIR4QWnrGySUA8vlZZ3OORs-MjS6kv6sTT1FBp9D8W9tnOVrEhXA-VQ2bcyc&usqp=CAU'),
//           ],
//           options: CarouselOptions(
//             height: 200,
//             // autoPlay: true,
//             aspectRatio: 16 / 9,
//             autoPlayCurve: Curves.fastOutSlowIn,
//             enableInfiniteScroll: true,
//             // autoPlayAnimationDuration:
//             // const Duration(milliseconds: 800),
//             viewportFraction: 1,
//             onPageChanged: (index, reason) {
//               setState(() {
//                 _currentSliderIndex = index;
//               });
//             },
//           ),
//         ),
//         const SizedBox(height: 10),
//         CarouselIndicator(
//           totalPage: 3,
//           activePageIndex: _currentSliderIndex,
//           indicatorColor: Colors.grey,
//           activeIndicatorColor: Colors.blue,
//           space: 8,
//         ),
//       ],
//     );
//   }
// }
//
// Widget _buildCircularImageWidget(String imageUrl) {
//   return Image.network(
//     imageUrl,
//     fit: BoxFit.cover,
//   );
// }
//
// class CarouselIndicator extends StatelessWidget {
//   final int totalPage;
//   final int activePageIndex;
//   final Color indicatorColor;
//   final Color activeIndicatorColor;
//   final double space;
//
//   const CarouselIndicator({
//     Key? key,
//     required this.totalPage,
//     required this.activePageIndex,
//     this.indicatorColor = Colors.grey,
//     this.activeIndicatorColor = Colors.blue,
//     this.space = 8,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: List.generate(totalPage, (index) {
//         return Container(
//           width: 8,
//           height: 8,
//           margin: EdgeInsets.symmetric(horizontal: space / 2),
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: index == activePageIndex
//                 ? activeIndicatorColor
//                 : indicatorColor,
//           ),
//         );
//       }),
//     );
//   }
// }



import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CategorySlider extends StatefulWidget {
  const CategorySlider({super.key});

  @override
  State<CategorySlider> createState() => _CategorySliderState();
}

class _CategorySliderState extends State<CategorySlider> {
  int _currentSliderIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)
            ),
            child: CarouselSlider(
              items: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              "Business Report",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward),
                          )
                        ],
                      ),
                      _buildCircularImageWidget(
                          'https://i.ytimg.com/vi/NOGOtX5n5F8/maxresdefault.jpg')
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              "Business Report",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward),
                          )
                        ],
                      ),
                      _buildCircularImageWidget(
                          'https://ezmedya.com/images/banner-slider-nedir_318732.webp'),
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              "Business Report",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward),
                          )
                        ],
                      ),
                      _buildCircularImageWidget(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1PJGqNarRIR4QWnrGySUA8vlZZ3OORs-MjS6kv6sTT1FBp9D8W9tnOVrEhXA-VQ2bcyc&usqp=CAU'),
                    ],
                  ),
                ),
              ],
              options: CarouselOptions(
                height: 210,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentSliderIndex = index;
                  });
                },
              ),
            ),
          ),
          const SizedBox(height: 10),
          CarouselIndicator(
            totalPage: 3,
            activePageIndex: _currentSliderIndex,
            indicatorColor: Colors.grey,
            activeIndicatorColor: Colors.blue,
            space: 8,
          ),
        ],
      ),
    );
  }

  Widget _buildCircularImageWidget(String imageUrl) {
    return SizedBox(
      height: 160,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20)
        ),
        child: Expanded(
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
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
      children: List.generate(
        totalPage,
            (index) {
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
        },
      ),
    );
  }
}