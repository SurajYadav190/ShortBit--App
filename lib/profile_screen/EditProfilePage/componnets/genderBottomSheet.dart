import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/custom_widgets/custom_bounce.dart';
import '../bloc/updateprofile_bloc.dart';

class GenderBottomSheet extends StatefulWidget {
  final String gender;
  const GenderBottomSheet({super.key, required this.gender});

  @override
  State<GenderBottomSheet> createState() => _GenderBottomSheetState();

  static selectGenderBottomSheet(
      {required BuildContext context,required String gender}) =>
      showModalBottomSheet(
        // backgroundColor: Color(0xFF82858C),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(36),
            topRight: Radius.circular(36),
          ),
        ),
        context: context,

        builder: (context) =>
            GenderBottomSheet(gender: gender),
      );
}

class _GenderBottomSheetState extends State<GenderBottomSheet> {
  bool genderMale=true;
  bool genderFemale=false;

  String selectedGender="";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    inFun();
  }


  inFun(){
    selectedGender=widget.gender;
    setState(() {

    });

    print("initial selected gender===>>  ${selectedGender}");


  }


  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding:
      EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomBounce(
                      onPressed: () async {

                        genderMale=true;
                        genderFemale=false;
                        selectedGender="Male";
                        setState(() {

                        });

                        print("selectedGender===>> ${selectedGender}");

                        // Navigator.pop(context);
                      },
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: selectedGender=="Male"?primaryBlueColor:Colors.white,
                                  width: 1,

                                )
                            ),

                            width: 80,
                            height: 80,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/images/Male User.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text(
                            'Male',
                            style: TextStyle(
                              color: Colors.black45,
                              fontSize: 18,
                              fontFamily: 'Segoe UI',
                            ),
                          )
                        ],
                      ),
                    ),
                    CustomBounce(
                      onPressed: () async {

                        genderFemale=true;
                        genderMale=false;
                        selectedGender="Female";


                        setState(() {

                        });
                        print("selectedGender===>> ${selectedGender}");



                        // Navigator.pop(context);
                      },
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: selectedGender=="Female"?primaryBlueColor:Colors.white,


                                    width: 1)
                            ),
                            width: 80,
                            height: 80,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/images/Female User.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),

                          Text(
                            'Female',
                            style: TextStyle(
                              color: Colors.black45,
                              fontSize: 18,
                              fontFamily: 'Segoe UI',
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10,),

                CustomBounce(
                  onPressed: (){

                    print("selectedGender===>>> ${selectedGender}");

                    final bloc=context.read<UpdateprofileBloc>();

                    Map<String,String> data={
                      "gender":selectedGender.toString()
                    };
                    bloc.add(UpdateProfileApi(data: data,context: context));

                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      decoration: ShapeDecoration(
                        color: Color(0xFF6000FF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 10),
                        child: Text("Save",textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Segoe UI',
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.24,
                          ),),
                      ),
                    ),
                  ),
                )

              ],
            ),
          )),
    );
  }
}
