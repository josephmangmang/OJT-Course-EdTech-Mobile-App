import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/topic.dart';

typedef OnCardPressed = void Function();

class TopicCard extends StatelessWidget {
  const TopicCard({
    Key? key,
    required this.topic,
    required this.onCardPressed,
  }) : super(key: key);

  final Topic topic;
  final double progressBarWidth = 222;
  final OnCardPressed onCardPressed;

  double getProgress() {
    double temp = 5;
    double tempPer = 100 * temp / 10;
    double answer = progressBarWidth * tempPer / 100;
    return answer;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardPressed,
      child: Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: const Color(0xFFCDCDCD),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CachedNetworkImage(
            imageUrl: topic.image,
            width: 78,
            height: 72,
            errorWidget: (context, url, error) =>
            const SizedBox(
                height: 72,
                width: 78,
                child: Icon(
                  Icons.error,
                  color: Colors.red,
                )),
            placeholder: (context, url) =>
                Container(
                  height: 72,
                  width: 78,
                ),
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    topic.topic,
                    style: const TextStyle(
                      color: Color(0xFF3B3936),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.50,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 11,
                        width: progressBarWidth,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xFFFFF5EE), //const Color
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          height: 11,
                          width: getProgress(),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xFF94C0E9)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ),);
  }
}
