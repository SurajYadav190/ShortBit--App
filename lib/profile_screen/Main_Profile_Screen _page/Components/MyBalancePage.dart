import 'package:flutter/material.dart';

import '../../../utils/common_methods/navigation_method.dart';

class MyBalancePage extends StatefulWidget {
  const MyBalancePage({super.key});

  @override
  State<MyBalancePage> createState() => _MyBalancePageState();
}

class _MyBalancePageState extends State<MyBalancePage> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height*1;
    final width=MediaQuery.of(context).size.width*1;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: height * 0.08,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10),
          child: Container(
              decoration: ShapeDecoration(
                shape: OvalBorder(
                  side: BorderSide(width: 1, color: Color(0xFFBFBFBF)),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: InkWell(
                    onTap: (){
                      navPop(context: context);
                    },
                    child: Icon(Icons.arrow_back)),
              )),
        ),
        leadingWidth: 80,
        title: Text(
          'My Balance',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontFamily: 'Segoe UI',
            fontWeight: FontWeight.w600,
            height: 0.04,
            letterSpacing: -0.24,
          ),
        ),
        centerTitle: true,
      ),

    );
  }
}
