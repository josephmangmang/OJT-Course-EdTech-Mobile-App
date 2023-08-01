import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef OnCardPressed = Function();

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
    required this.onCardPressed,
    required this.title,
  }) : super(key: key);

  final OnCardPressed onCardPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardPressed,
      child: AbsorbPointer(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 24,
          ),
          alignment: Alignment.center,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 1,
              color: const Color(0xFFBEBAB3),
            ),
          ),
          child: Text(
            title,
            style: const TextStyle(
              color: Color(0xFF3B3936),
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
