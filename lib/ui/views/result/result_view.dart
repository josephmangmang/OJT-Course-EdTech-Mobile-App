import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_svg/svg.dart';
import 'result_viewmodel.dart';

class ResultView extends StackedView<ResultViewModel> {
  const ResultView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ResultViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(),
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 375,
                    height: 132,
                    padding: const EdgeInsets.all(16),
                    child: SizedBox(
                      width: 343,
                      height: 56,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: const Color(0xFFBEBAB3)),
                                ),
                                child: ClipOval(
                                  child: SizedBox(
                                    height: 48,
                                    width: 48,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: SvgPicture.asset(
                                          'assets/svg/Go-back.svg'),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 287,
                                height: 65,
                                padding: const EdgeInsets.all(16),
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 0.50, color: Color(0xFFBEBAB3)),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Expanded(
                                      child: TextField(
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Rubik',
                                            height: 2.8,
                                            color: Colors.black),
                                        decoration: InputDecoration(
                                            hintText: 'UI',
                                            border: InputBorder.none),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: SvgPicture.asset(
                                              'assets/svg/Search Icon.svg',
                                            ),
                                            iconSize: 24,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(3.0),
                                  child: Text(
                                    '2 Results',
                                    style: TextStyle(
                                      color: Color(0xFF3B3936),
                                      fontSize: 24,
                                      fontFamily: 'Rubik',
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: -0.50,
                                    ),
                                  ),
                                ),
                              ]),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      buildCard(
                          image: 'assets/png/Cool Kids High Tech.png',
                          price: "\$50",
                          hour: "3 h 30 min ",
                          title: "UI Advanced",
                          description: "Advanced mobile interface design",
                          color: 0xFFE6EDF4),
                      const SizedBox(height: 12),
                      buildCard(
                          image: 'assets/png/Cool Kids Alone Time.png',
                          price: "\$50",
                          hour: "3 h 30 min ",
                          title: "UI",
                          description: "Advanced web applications",
                          color: 0xFFF7F2EE),
                      const SizedBox(height: 12),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCard(
          {required String image,
          required String price,
          required String hour,
          required String description,
          required String title,
          required int color}) =>
      ClipRRect(
        child: Column(
          children: [
            Container(
              width: 343,
              height: 194,
              color: Color(color),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(image),
                  SizedBox(
                    width: 343,
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 21),
                        ElevatedButton(
                          style: ButtonStyle(
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(63, 24)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    12.0), // Adjust the radius as per your needs
                              ),
                            ),
                          ),
                          onPressed: () {
                            // Button press event
                          },
                          child: Text(price),
                        ),
                        const Spacer(flex: 1)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 343,
              height: 103,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          hour,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF5BA092),
                          ),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(title,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.5,
                            ))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(description,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ))
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );

  @override
  ResultViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ResultViewModel();
}
