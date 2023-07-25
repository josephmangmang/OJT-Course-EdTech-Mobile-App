import 'package:edtechapp/resources/svg_images.dart';
import 'package:edtechapp/ui/views/not_found/not_found_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_svg/svg.dart';
import '../../../model/course.dart';
import '../../custom_widget/course_card.dart';
import '../../custom_widget/search_course.dart';
import 'search_results_viewmodel.dart';

class SearchResultsView extends StackedView<SearchResultsViewModel> {
  const SearchResultsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SearchResultsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
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
                          SvgImages.background,
                        ),
                        SvgPicture.asset(
                          SvgImages.goBack,
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: SearchCourse(searchPressed: () {}, searchTextController: viewModel.searchTextController),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: viewModel.results.isNotEmpty,
              child: Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(top: 12, bottom: 32),
                child: Text(
                  '${viewModel.results.length} Results',
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
            ),
            Expanded(
              child: viewModel.isBusy
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : body(viewModel),
            ),
          ]),
        ),
      ),
    );
  }

  @override
  SearchResultsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SearchResultsViewModel();

  @override
  void onViewModelReady(SearchResultsViewModel viewModel) {
    viewModel.init();
  }

  Widget body(SearchResultsViewModel viewModel) {
    if (viewModel.results.isEmpty) {
      return const NotFoundView();
    }
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: viewModel.results.length,
      itemBuilder: (context, index) {
        var courseItem = viewModel.results[index];
        return CourseCard(
          course: courseItem,
          onItemPressed: (Course course) {
            viewModel.coursePressed(courseItem);
          },
          backgroundColor: Color(index + 1 % 2 == 0 ? 0xFFF7F2EE : 0xFFE6EDF4),
        );
      },
    );
  }
}
