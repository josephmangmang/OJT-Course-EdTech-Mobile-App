import 'dart:math';

import 'package:edtechapp/resources/png_images.dart';
import 'package:flutter/material.dart';

class CreditCards extends StatelessWidget {
  const CreditCards({
    Key? key,
    required this.creditCardButton,
    required this.paymentMethod,
    required this.cardNumber,
    required this.expireDate,
    required this.isSelected,
    required this.marginSize,
  }) : super(key: key);

  final Function() creditCardButton;
  final String paymentMethod;
  final String expireDate;
  final String cardNumber;
  final bool isSelected;
  final double marginSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: creditCardButton,
      child: Container(
        padding: const EdgeInsets.all(14),
        margin: EdgeInsets.symmetric(horizontal: marginSize),
        decoration: BoxDecoration(
          border: isSelected == true
              ? Border.all(
                  color: const Color(0xFFE3562A),
                  width: 2,
                )
              : null,
        ),
        child: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 59,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            Row(
              children: [
                Image.asset('${PngImages.rootPath}${paymentMethod}.png'),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cardNumber.isNotEmpty ? cardNumber : "None",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      expireDate.isNotEmpty ? expireDate : "None",
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
