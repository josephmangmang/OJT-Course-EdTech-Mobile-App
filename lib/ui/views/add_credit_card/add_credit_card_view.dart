import 'package:edtechapp/ui/custom_widget/app_button.dart';
import 'package:edtechapp/ui/custom_widget/appbar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'add_credit_card_viewmodel.dart';

class AddCreditCardView extends StackedView<AddCreditCardViewModel> {
  const AddCreditCardView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AddCreditCardViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(title: 'Payment'),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Add credit card',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.50,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(height: 32),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey, // Customize the border color here
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(height: 32),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Credit card number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey, // Customize the border color here
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(height: 11),
              const Row(
                children: [
                  Padding(
                   padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Expires",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                       SizedBox(
                        width: 155.50,
                         child: TextField(
                           decoration: InputDecoration(
                             hintText: '10/27',
                             border: OutlineInputBorder(
                               borderRadius: BorderRadius.all(
                                 Radius.circular(10.0),
                               ),
                             ),
                             focusedBorder: OutlineInputBorder(
                               borderSide: BorderSide(
                                 color: Colors.grey, // Customize the border color here
                                 width: 2.0,
                               ),
                               borderRadius: BorderRadius.all(
                                 Radius.circular(10.0),
                               ),
                             ),
                           ),
                           keyboardType: TextInputType.number,
                         ),
                       ),
                      ],
                    ),
                  ),
                  Padding(
                   padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "CVV",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                       SizedBox(
                        width: 155.50,
                         child: TextField(
                          obscureText: true,
                           decoration: InputDecoration(
                             hintText: '***',
                             border: OutlineInputBorder(
                               borderRadius: BorderRadius.all(
                                 Radius.circular(10.0),
                               ),
                             ),
                             focusedBorder: OutlineInputBorder(
                               borderSide: BorderSide(
                                 color: Colors.grey, // Customize the border color here
                                 width: 2.0,
                               ),
                               borderRadius: BorderRadius.all(
                                 Radius.circular(10.0),
                               ),
                             ),
                           ),
                           keyboardType: TextInputType.number,
                         ),
                       ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 32),
              AppButton(title: "Save", onClick: () {})
            ],
          ),
        ),
      ),
    );
  }

  @override
  AddCreditCardViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AddCreditCardViewModel();
}
