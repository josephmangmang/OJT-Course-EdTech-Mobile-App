import 'package:edtechapp/ui/custom_widget/appbar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../model/course.dart';
import '../../common/app_constants.dart';
import '../../custom_widget/course_card.dart';
import 'cart_viewmodel.dart';

class CartView extends StackedView<CartViewModel> {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CartViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(
                title: AppConstants.courseCartText,
              ),
              if (viewModel.courses.isEmpty)
                emptyView(context)
              else
                ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: viewModel.courses.length,
                  itemBuilder: (context, index) {
                    var courseItem = viewModel.courses[index];
                    return CourseCard(
                      course: courseItem,
                      onItemPressed: (Course course) {
                        viewModel.coursePressed(courseItem);
                      },
                      backgroundColor:
                          Color(index + 1 % 2 == 0 ? 0xFFF7F2EE : 0xFFE6EDF4),
                    );
                  },
                ),
            ],
          ),
        )));
  }

  @override
  CartViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CartViewModel();

  Widget emptyView(BuildContext context) {
    return SizedBox(
        height: MediaQuery.sizeOf(context).height,
        child: const Center(child: Text(AppConstants.emptyCartText)));
  }
}
