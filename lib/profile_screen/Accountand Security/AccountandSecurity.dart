import 'package:flutter/material.dart';
import 'package:shortbit/utils/common_methods/navigation_method.dart';

class AccountandSecurity extends StatefulWidget {
  const AccountandSecurity({super.key});

  @override
  State<AccountandSecurity> createState() => _WalletPageState();
}

class _WalletPageState extends State<AccountandSecurity> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height*1;
    final width=MediaQuery.of(context).size.width*1;
    return
      Scaffold(
        appBar: AppBar(
          toolbarHeight: height*0.08,

          leading: Padding(
            padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10),
            child: Container(
              width: width*0.2,


                    decoration: ShapeDecoration(
                    shape: OvalBorder(
                    side: BorderSide(width: 1, color: Color(0xFFBFBFBF)),
                ),),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: InkWell(
                    onTap: (){
                      navPop(context: context);
                    },

                      child: Icon(Icons.arrow_back,size: 20,)),
                )),
          ),
          leadingWidth: 80,

          title: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(
              'Account & Security',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Segoe UI',
                fontWeight: FontWeight.w600,
                height: 0.04,
                letterSpacing: -0.24,
              ),
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: width*0.025, color: Colors.black12),
                  ),),
                child: ListTile(
                  leading:Image.asset("assets/icon/Vector1.png",width: width*0.04,),
                  title: Text("Phone number",style: TextStyle(fontSize: 18),),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey.shade500,),


                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: width*0.002, color: Colors.black26),
                  ),),
                child: ListTile(
                  leading:Image.asset("assets/icon/Vector2.png",width: width*0.06,),
                  title: Text("Email address"),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey.shade500,),


                ),
              ),
            ), Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: width*0.002, color: Colors.black26),
                  ),),
                child: ListTile(
                  leading:Image.asset("assets/icon/Vector3.png",width: width*0.06,),
                  title: Text("Google"),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey.shade500,),


                ),
              ),
            ), Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: width*0.025, color: Colors.black12),
                  ),),
                child: ListTile(
                  leading:Image.asset("assets/icon/Vector4.png",width: width*0.06,),
                  title: Text("Facebook"),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey.shade500,),


                ),

              ),
            ),
            SizedBox(
              height: height*0.025,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Cancel account',
                  style: TextStyle(
                    color: Color(0xFF6000FF),
                    fontSize: 24,
                    fontFamily: 'Segoe UI',
                    fontWeight: FontWeight.w400,
                    height: 0.06,
                    letterSpacing: -0.24,
                  ),
                ),
              ),
            )
          ],
        ),


      );
  }
}
