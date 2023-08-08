import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../resources/svg_images.dart';

typedef OnClick = Function();
class SocialNetworks extends StatelessWidget {
  const SocialNetworks({super.key, required this.facebookClick, required this.googleClick, required this.instagramClick});

  final OnClick facebookClick;
  final OnClick googleClick;
  final OnClick instagramClick;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment:
        MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: facebookClick,
            child: AbsorbPointer(
              child: Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 6),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: const Color(0xFF65A9E9),
                    borderRadius: BorderRadius.circular(8)),
                child: SvgPicture.asset(
                    SvgImages.socialNetworksIcons),
              ),
            ),
          ),
          InkWell(
            onTap: instagramClick,
            child: AbsorbPointer(
              child: Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 6),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: const Color(0xFF65A9E9),
                    borderRadius: BorderRadius.circular(8)),
                child: SvgPicture.asset(
                    SvgImages.socialNetworksIcons1),
              ),
            ),
          ),InkWell(
            onTap: googleClick,
            child: AbsorbPointer(
              child: Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 6),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: const Color(0xFF65A9E9),
                    borderRadius: BorderRadius.circular(8)),
                child: SvgPicture.asset(
                    SvgImages.socialNetworkIcons2),
              ),
            ),
          ),


        ],
      ),
    );
  }

}