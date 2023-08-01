import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../resources/svg_images.dart';

class AccountInformation extends StatelessWidget {
  const AccountInformation(
      {Key? key,
      required this.title,
      this.subtitle,
      required this.icon,
      required this.onPressed,
      this.dateTime})
      : super(key: key);

  final String title;
  final String? subtitle;
  final String icon;
  final DateTime? dateTime;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        height: 82,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFFBEBAB3), width: 1),
            borderRadius: BorderRadius.circular(16)),
        width: double.infinity,
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: ShapeDecoration(
                  color: const Color(0xFF65A9E9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(56),
                  ),
                ),
                child: Transform.scale(
                  scale: 0.5,
                  child: SvgPicture.asset(
                    icon,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 12, right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: Color(0xFF3B3936),
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.50,
                        ),
                      ),
                      Text(
                        subtitle ??
                            (dateTime != null ? dateTime!.toString() : ''),
                        style: const TextStyle(
                          color: Color(0xFF78746D),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SvgPicture.asset(SvgImages.icon)
            ]),
      ),
    );
  }
}
