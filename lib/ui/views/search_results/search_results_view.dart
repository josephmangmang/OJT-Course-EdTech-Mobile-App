import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_svg/svg.dart';
import 'search_results_viewmodel.dart';
import 'package:edtechapp/ui/views/home/home_viewmodel.dart';

class SearchResultsView extends StackedView<SearchResultsViewModel> {
  const SearchResultsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SearchResultsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SvgPicture.asset('assets/svg/Background.svg'),
                        SvgPicture.asset('assets/svg/Go-back.svg'),
                      ],
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 1,
                                color: Color(0xFFBEBAB3),
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            suffixIcon: Transform.scale(
                                scale: 0.6,
                                child: IconButton(
                                    onPressed: viewModel.searchCourse,
                                    icon: SvgPicture.asset(
                                        'assets/svg/Search Icon.svg')))),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 12, bottom: 32),
                child: const Text(
                  '2 Results',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.30,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              //build Card
              buildCard(
                  image: 'assets/png/Cool Kids High Tech.png',
                  price: "\$50",
                  hour: "3 h 30 min ",
                  title: "UI Advanced",
                  description: "Advanced mobile interface design",
                  color: 0xFFE6EDF4),
              const SizedBox(height: 12),
              buildCard(
                  image: 'assets/png/Cool Kids Alone Time (3).png',
                  price: "\$50",
                  hour: "3 h 30 min ",
                  title: "UI",
                  description: "Advanced web applications",
                  color: 0xFFF7F2EE),
              const SizedBox(height: 12),
            ]),
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
      required int color}) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            strokeAlign: BorderSide.strokeAlignOutside,
            color: Color(0xFFBEBAB3),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
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
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
  }

  @override
  SearchResultsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SearchResultsViewModel();
}
