import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shortbit/profile_screen/EditProfilePage/bloc/updateprofile_bloc.dart';
import 'package:shortbit/test/firebase_chat_demo/chatter_screen.dart';
import 'package:shortbit/utils/common_methods/navigation_method.dart';
import 'package:shortbit/utils/custom_widgets/custom_bounce.dart';

import '../../create_account/bloc/create_account_bloc.dart';

class UserNamePage extends StatefulWidget {
  final String userName;
  const UserNamePage({super.key, required this.userName});

  @override
  State<UserNamePage> createState() => _UserNamePAgeState();
}


class _UserNamePAgeState extends State<UserNamePage> {

  TextEditingController textController=TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    inFun();
  }

  inFun(){
    textController.text=widget.userName;
    setState(() {

    });

  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    final bloc=context.read<UpdateprofileBloc>();
    final bloc1=context.read<CreateAccountBloc>();
    return Scaffold(
      appBar: AppBar(

        leading: Container(
            decoration:BoxDecoration(
              shape: BoxShape.circle,

              border: Border.all(color: Colors.grey)
            ),
            child: InkWell(
              onTap: (){
                navPop(context: context);
              },
                child: Icon(Icons.arrow_back))
        ),
        title: Text(
          'UserName',
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

              Map<String,String> data={
                "name":textController.text.toString()
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
                  fontWeight: FontWeight.w600,
                   letterSpacing: -0.24,
                ),
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.grey.shade300,
      body: BlocBuilder<UpdateprofileBloc, UpdateprofileState>(
  builder: (context, state) {
    return Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          height:60,
          width: width*1,
          decoration: BoxDecoration(color:
          Colors.white

          ),
          child: TextFormField(
            controller:textController ,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: InputBorder.none

              ),



          ),
        ),
      );
  },
),
    );
  }
}
