import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';

import 'not_found_viewmodel.dart';

class NotFoundView extends StackedView<NotFoundViewModel> {
  const NotFoundView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    NotFoundViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  alignment: Alignment.centerLeft,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset('assets/svg/Background.svg'),
                      SvgPicture.asset('assets/svg/Go-back.svg'),
                    ],
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 1,
                        color: Color(0xFFBEBAB3),
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    semanticCounterText: 'Cooking',
                    suffixIcon: Transform.scale(
                      scale: 0.6,
                      child: SvgPicture.asset('assets/svg/Search Icon.svg'))
                  ),

                ),
                const SizedBox(
                  height: 32,
                ),
                Image.asset('assets/png/Cool Kids Standing.png'),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  'Course not found',
                  style: TextStyle(
                    color: Color(0xFF3B3936),
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.50,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Try searching the course with \na different keyword',
                  style: TextStyle(
                    color: Color(0xFF78746D),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  NotFoundViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NotFoundViewModel();
}
