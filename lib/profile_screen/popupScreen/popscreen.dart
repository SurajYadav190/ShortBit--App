import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class PopScreen extends StatefulWidget {
  const PopScreen({super.key});

  @override
  State<PopScreen> createState() => _PopScreenState();
}

class _PopScreenState extends State<PopScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery
        .of(context)
        .size
        .height;
    final width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
        body: Center(
            child: ElevatedButton(
                child: const Text("Open Popup"),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                            backgroundColor:HexColor("#FFFFFF"),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  20.0,
                                ),
                              ),
                            ),
                            contentPadding: EdgeInsets.only(
                              top: 10.0,
                            ),
                            title:  Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  width: 50,
                                  child: Column(
                                    children: [
                                      Image.asset("assets/icon/hearticon.png",width: 100,height: 100,),
                                    ],
                                  )),
                            ),
                            content: Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                    height: 150,
                                      decoration: BoxDecoration(
                                        boxShadow: [BoxShadow(
                                          color: Colors.grey,
                                          spreadRadius:1,
                                          blurStyle: BlurStyle.outer,
                                          offset:Offset.zero,
                                          blurRadius: 0.5

                                        )],
                                        color: HexColor("#FFFDE8"),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20.0),
                                            bottomRight: Radius.circular(20.0)),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 0),
                                        child: Column(
                                          children: [
                                           Padding(
                                             padding: const EdgeInsets.all(8.0),
                                             child: Center(child: Text("Your Host has Ended\nthis Live Session",textAlign: TextAlign.center,
                                               style: TextStyle(
                                                 color: Color(0xFF262626),
                                                 fontSize: 30,
                                                 fontStyle: FontStyle.italic,
                                                 fontFamily: 'Segoe UI',
                                                 fontWeight: FontWeight.w600,
                                                 letterSpacing: -0.24,
                                               ),)),
                                           ),
                                            Padding(
                                            padding: const EdgeInsets.only(top: 10),

                                              child: Container(
                                                width: 130,
                                                height: 40,
                                                decoration: ShapeDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment(0.00, -1.00),
                                                    end: Alignment(0, 1),
                                                    colors: [Color(0xFF1A64E5), Color(0xFF00C6A2)],
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(16),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(15),
                                                  child: Text("Okay",textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 25,
                                                      fontStyle: FontStyle.italic,
                                                      fontFamily: 'Segoe UI',
                                                      fontWeight: FontWeight.w600,
                                                      height: 0.10,
                                                      letterSpacing: -0.24,
                                                    ),),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          );
                      });
                })));
  }}