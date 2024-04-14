import 'package:flutter/material.dart';
import 'package:news_app/models/head_line_model.dart';
import 'package:news_app/widgets/head_line_widget.dart';

class HorizentalListViewBuilderWidget extends StatelessWidget {
  const HorizentalListViewBuilderWidget({super.key});

  final List<HeadLineModel> item = const [
    HeadLineModel(
      image: 'assets/sports.jpg',
      text: 'Sports',
    ),
    HeadLineModel(
      image: 'assets/business.jpg',
      text: 'Business',
    ),
    HeadLineModel(
      image: 'assets/entertaiment.jpeg',
      text: 'Entertainment',
    ),
    HeadLineModel(
      image: 'assets/health.jpeg',
      text: 'Health',
    ),
    HeadLineModel(
      image: 'assets/science.jpeg',
      text: 'Science',
    ),
    HeadLineModel(
      image: 'assets/technology.jpeg',
      text: 'Technology',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: item.length,
          itemBuilder: (context, index) {
            return HeadlineWidget(headLineModel: item[index]);
          }),
    );
  }
}
