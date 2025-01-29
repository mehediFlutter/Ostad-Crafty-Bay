import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../screens/utility/app_colors.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
    final ValueNotifier<int> _selectedSlider = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        height12,
                CarouselSlider(
                  options: CarouselOptions(
                    height: 180.0,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    onPageChanged: (int page, _) {
                      _selectedSlider.value = page;
                    },
                  ),
                  items: [1, 2, 3, 4, 5].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(color: Colors.amber),
                            child: Text(
                              'text $i',
                              style: TextStyle(fontSize: 16.0),
                            ));
                      },
                    );
                  }).toList(),
                ),
                height16,
                ValueListenableBuilder(
                  valueListenable: _selectedSlider,
                  builder: (context, value, _) {
                //    print("Rebuild");
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        5,
                        (i) => Container(
                          margin: EdgeInsets.symmetric(horizontal: 2),
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                            color: value == i ? AppColor.primary : null,
                          ),
                        ),
                      ),
                    );
                  },
                ),
      ],
    );
  }
}