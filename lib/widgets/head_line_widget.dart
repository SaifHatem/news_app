import 'package:flutter/material.dart';
import 'package:news_app/models/head_line_model.dart';
import 'package:news_app/views/category_view.dart';

class HeadlineWidget extends StatelessWidget {
  const HeadlineWidget({super.key, required this.headLineModel});

  final HeadLineModel headLineModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(
                category: headLineModel.text,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          height: 120,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(headLineModel.image),
            ),
          ),
          child: Center(
            child: Text(
              headLineModel.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
