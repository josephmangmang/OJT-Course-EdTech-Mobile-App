import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_svg/svg.dart';
import '../../../model/course.dart';
import '../../custom_widget/course_card.dart';
import '../../custom_widget/search_course.dart';
import 'search_results_viewmodel.dart';
import 'package:edtechapp/ui/custom_widget/custom_widget.dart';

class SearchResultsView extends StackedView<SearchResultsViewModel> {
  const SearchResultsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SearchResultsViewModel viewModel,
    Widget? child,
  ) {
    return ViewModelBuilder<SearchResultsViewModel>.reactive(
      viewModelBuilder: () => SearchResultsViewModel(),
      onViewModelReady: (model) => model.searchCourse(),
      builder: (context, viewModel, child) {
        return Scaffold(
          body: viewModel.isBusy
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : SafeArea(
                  child: SingleChildScrollView(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Column(children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  viewModel.back();
                                },
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    SvgPicture.asset(
                                        'assets/svg/Background.svg'),
                                    SvgPicture.asset('assets/svg/Go-back.svg'),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: SearchCourse(searchPressed: viewModel.searchCourse, searchTextController: viewModel.searchTextController),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(top: 12, bottom: 32),
                          child: Text(
                            viewModel.total,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.30,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          primary: false,
                          itemCount: viewModel.listOfCourse.length,
                          itemBuilder: (context, index) {
                            var courseItem = viewModel.listOfCourse[index];
                            return CourseCard(
                              course: courseItem,
                              onItemPressed: (Course course) {
                                viewModel.coursePressed(courseItem);
                              },
                              backgroundColor: Color(
                                  index + 1 % 2 == 0 ? 0xFFF7F2EE : 0xFFE6EDF4),
                            );
                          },
                        ),
                      ]),
                    ),
                  ),
                ),
        );
      },
    );
  }

  @override
  SearchResultsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SearchResultsViewModel();
}
