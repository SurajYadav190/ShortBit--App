import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:shortbit/utils/common_methods/navigation_method.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/custom_widgets/custom_bounce.dart';
import '../bloc/updateprofile_bloc.dart';

class BirthDayBottomSheet extends StatefulWidget {
  final String dob;
  const BirthDayBottomSheet({super.key, required this.dob});

  @override
  State<BirthDayBottomSheet> createState() => _BirthDayBottomSheetState();

  static selectBirthDayBottomSheet(
      {required BuildContext context, required String dob}) =>
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
            BirthDayBottomSheet(dob: dob,),
      );
}

class _BirthDayBottomSheetState extends State<BirthDayBottomSheet> {


DateTime selectedDate = DateTime.now();

@override
void initState() {
  // TODO: implement initState
  super.initState();
  inFun();
}
String newSelectedDat="";

inFun(){
  newSelectedDat=widget.dob;
  setState(() {

  });
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

            SizedBox(height: 10,),
              InkWell(

                onTap: (){

                  selectDate(context);

                },
                child: Container(height: 50,
                width: double.infinity,

                  decoration: BoxDecoration(
                      color: Colors.white70,
                    borderRadius: BorderRadius.circular(10),
                     border: Border.all(color: Colors.grey.shade300)
                  ),
                  child: Align(
                       alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(newSelectedDat),
                      )),

                ),
              ),

                SizedBox(
                  height: 30,
                ),

                CustomBounce(
                  onPressed: (){


                    final bloc=context.read<UpdateprofileBloc>();

                    Map<String,String> data={
                      "dob":newSelectedDat.toString()
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
                            fontSize: 14,
                            fontFamily: 'Segoe UI',
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.24,
                          ),),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          )),
    );
  }

Future<void> selectDate(BuildContext context) async {
  final DateTime? picked = await showDatePicker(

      context: context,
      initialDate:DateTime.now(),

      firstDate:DateTime(1970),

      lastDate: DateTime.now());
  if (picked != null && picked != selectedDate) {


    setState(() {
      selectedDate = picked;
      newSelectedDat = readTimestamp(selectedDate);
      print("date selceted==> ${newSelectedDat}");
    });



    // setState(() {
    //   selectedDate = picked;
    //   _endDateController.text = readTimestamp(selectedDate);
    // });

    //cahngedate(picked);
  }
}

String readTimestamp(DateTime timestamp) {
  var now = DateTime.now();
  var format = DateFormat('dd/MM/yyyy');
  var date = DateTime.utc(
    timestamp.year,
    timestamp.month,
    timestamp.day,
  );

  var time = '';

  time = format.format(date.toLocal());

  return time;
}

}
