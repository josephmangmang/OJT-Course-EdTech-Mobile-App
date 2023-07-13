import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:edtechapp/ui/views/navigation_bar/navigation_bar_view.dart';
import 'settings_viewmodel.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsView extends StackedView<SettingsViewModel> {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SettingsViewModel viewModel,
    Widget? child,
  ) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SettingsViewModel(),
        onViewModelReady: (model) => model.getUser(),
        builder: (context, viewModel, child) {
          return viewModel.isBusy
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : SafeArea(
                  child: SingleChildScrollView(
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 56 - 16),
                            child: Row(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    SvgPicture.asset(
                                        'assets/svg/Background.svg'),
                                    SvgPicture.asset('assets/svg/Go-back.svg'),
                                  ],
                                ),
                                const Expanded(
                                  child: Text(
                                    'Settings',
                                    style: TextStyle(
                                        color: Color(0xFF3B3936),
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: -0.50),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          Image.asset('assets/png/Cool Kids On Wheels (2).png'),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 16),
                            height: 82,
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xFFBEBAB3), width: 1),
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
                                        'assets/svg/notification.svg',
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          left: 12, right: 8),
                                      child: const Text(
                                        'Notifications',
                                        style: TextStyle(
                                          color: Color(0xFF3B3936),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: -0.50,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SvgPicture.asset(
                                      'assets/svg/Toggle Buttons.svg')
                                ]),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              'Account information',
                              style: TextStyle(
                                color: Color(0xFF3B3936),
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.50,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          buildCell(
                            icon: 'assets/svg/Path.svg',
                            title: 'Name',
                            subtitle: viewModel.user!.name,
                          ),
                          buildCell(
                            icon: 'assets/svg/Shape.svg',
                            title: 'Email',
                            subtitle: viewModel.user!.email,
                          ),
                          buildCell(
                            icon: 'assets/svg/Vector.svg',
                            title: 'Password',
                            subtitle: 'changed 2 weeks ago',
                          ),
                        ],
                      ),
                    ),
                  ),
                );
        });
  }

  @override
  SettingsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SettingsViewModel();
}

Widget buildCell({
  required String icon,
  required String title,
  required String subtitle,
}) {
  return Container(
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
                    subtitle,
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
          SvgPicture.asset('assets/svg/Icon.svg')
        ]),
  );
}