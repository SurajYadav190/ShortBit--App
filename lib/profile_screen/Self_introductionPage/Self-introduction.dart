import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shortbit/utils/common_methods/navigation_method.dart';
import 'package:shortbit/utils/custom_widgets/custom_bounce.dart';

import '../EditProfilePage/bloc/updateprofile_bloc.dart';

class SelfIntroduction extends StatefulWidget {
  final String about;
  const SelfIntroduction({super.key, required this.about});

  @override
  State<SelfIntroduction> createState() => _SelfIntroductionState();
}

class _SelfIntroductionState extends State<SelfIntroduction> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    inFun();
  }
  TextEditingController introController =TextEditingController();

  inFun(){

    introController.text=widget.about;
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: height * 0.08,
        leading: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey.shade300)

            ),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: InkWell(
                  onTap: () {
                    navPop(context: context);
                  },
                  child: Center(child: Icon(Icons.arrow_back))),
            )),

        title: Text(
          'Self- Introduction',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontFamily: 'Segoe UI',
            fontWeight: FontWeight.w600,
             letterSpacing: -0.24,
          ),
        ),
        centerTitle: true,
        actions: [
          CustomBounce(
            onPressed: (){
              final bloc=context.read<UpdateprofileBloc>();

              Map<String,String> data={
                "about_me":introController.text.toString()
              };
              bloc.add(UpdateProfileApi(data: data,context: context));
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                "Save",
                style: TextStyle(
                  color: Color(0xFF0047FF),
                  fontSize: 16,
                  fontFamily: 'Segoe UI',
                  fontWeight: FontWeight.w800,
                   letterSpacing: -0.24,
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 25,left: 18,right: 18),
        child: TextFormField(
          controller: introController,

          decoration: InputDecoration(

            hintStyle: TextStyle(fontSize: 20),
            hintText: "Enter the Self Introduction,",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15)
            )


          ),

          maxLines: 12,
        ),
      ),

    );
  }
}
