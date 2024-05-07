import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:shortbit/utils/custom_widgets/app_background.dart';

import '../create_account/bloc/create_account_bloc.dart';
import '../login_screen/bloc/login_bloc.dart';
import '../utils/common_methods/navigation_method.dart';
import '../utils/custom_widgets/custom_bounce.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();


}


class _TermsAndConditionsState extends State<TermsAndConditions> {
  @override
  void initState() {
    getTerms();
    super.initState();
  }

  String termsAndCondition = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: CustomBounce(
          onPressed: () {
            navPop(context: context);
          },
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(
                  "assets/images/circular_back_btn.png"),
            ),
          ),
        ),
        title: Text("Terms & Condition", style: TextStyle(
          fontSize: 18, color: Colors.black, fontFamily: 'Segoe UI',
          fontWeight: FontWeight.w600,)),
        centerTitle: true,
      ),
      body: AppBackground(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            BlocConsumer<CreateAccountBloc, CreateAccountState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              buildWhen: (previous, current) {
                if (current.isTermsAndCondition ==true) {
                  termsAndCondition =current.termsAndConditionModel!.data!.value!;

                  return true;
                } else {

                  return false;
                }
              },
              builder: (context, state) {
                return Html(
                  data: termsAndCondition,
                );
              },
            )
          ],
        ),
      ),
    );
  }

  void getTerms() {
    final createAccountBloc = context.read<CreateAccountBloc>();
    createAccountBloc.add(GetTermsAndCondition(context: context));
  }
}
