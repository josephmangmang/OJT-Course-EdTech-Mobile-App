import 'package:dartz/dartz.dart';
import 'package:edtechapp/app/app.locator.dart';
import 'package:edtechapp/resources/svg_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked_services/stacked_services.dart';

typedef BackButtonPressed = void Function();

class CustomAppBar extends StatelessWidget {
  CustomAppBar({
    Key? key,
    this.backButtonPressed,
    this.title = "",
  }) : super(key: key);

  final _navigationService = locator<NavigationService>();

  String title;
  BackButtonPressed? backButtonPressed;

  void backButtonFunction() {
    if (backButtonPressed == null) {
      _navigationService.back();
    } else {
      backButtonPressed!();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 8, right: 40),
      child: Row(
        children: [
          IconButton(
            onPressed: backButtonFunction,
            icon: Stack(
              alignment: Alignment.center,
              children: [
                Transform.scale(
                  scale: 1.4,
                  child: SvgPicture.asset(SvgImages.background),
                ),
                SvgPicture.asset(SvgImages.goBack),
              ],
            ),
          ),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                color: Color(0xFF3B3936),
                fontSize: 24,
                fontWeight: FontWeight.w700,
                letterSpacing: -0.50,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
