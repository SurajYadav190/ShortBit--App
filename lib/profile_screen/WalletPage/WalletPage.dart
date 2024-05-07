import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:shortbit/profile_screen/WalletPage/Components/TabBarContainer.dart';
import 'package:shortbit/profile_screen/components/WidgetTransation.dart';

import '../../utils/app_colors.dart';
import 'Components/Widget hendingSection.dart';
import 'Components/Widget purplecolors.dart';
import 'bloc/bloc_wallet_bloc.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    inFun();
  }

  inFun(){

    final bloc=context.read<WalletBloc>();
    bloc.add(WalletApi());

  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return BlocBuilder<WalletBloc, WalletState>(
  builder: (context, state) {
    return Scaffold(
      body:
      state.walletModel==null?Center(child: CircularProgressIndicator()):
      SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: [
              purpleBackground(),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Column(
                  children: [
                    headingSection(context: context),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
            ],
          ),
        
          Container(
           decoration: BoxDecoration(
               gradient: LinearGradient(
                 begin: Alignment.topRight,
                 end: Alignment.bottomLeft,
                 colors: [
        
                   appPurpleGradient2Color,
                   appPurpleGradient1Color,
                 ],
        
               ),
        
             borderRadius: BorderRadius.circular(20)
        
           ),
           child: Padding(
             padding: const EdgeInsets.only(right: 20,left: 20,top: 8,bottom: 8),
             child: Text("My Coins",style: TextStyle(color: Colors.white),),
           )),
        
          SizedBox(height: 10,),
        
          Column(
            children: [
        
              TabBarContainer(text: "Balance "+state.walletModel!.data!.balance.toString()),
        
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Text(
                      "Transaction",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF41297C),
                        fontSize: 16,
                        fontFamily: 'Segoe UI',
                        fontWeight: FontWeight.w600,
                        height: 0.06,
                        letterSpacing: -0.24,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
        
                    decoration: ShapeDecoration(
                      color: Color(0xFFFCFCFC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(-1, 0),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child:
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: state.walletModel!.data!.userTransactions!.length,
                      itemBuilder: (context, index) {
                        var temp=state.walletModel!.data!.userTransactions![index];
        
                      return  Column(children: [
                        ListTile(
                            leading: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color:
                                        Colors.grey.shade300)),
                                child: Image.asset(
                                   temp.transactionType=="credit"?
                                  "assets/WalletIcon/bottomarrow.png":
                                  "assets/WalletIcon/uparrow.png",
                                  width: width * 0.1,
                                  height: height * 0.1,
                                )),
                            title: Text(convertApiDateTimeToFormattedTime(temp.createdAt.toString())),
                            subtitle: Text(
                        temp.toUserId==null?"":
                                temp.toUserId!.name.toString()
                            ),
                            trailing: Text(
                              temp.toUserId==null?"":
                              temp.amount.toString(),
                              style: TextStyle(color: Colors.green),
                            )),
        
                      ]);
        
                    },)
                  ))],
          ),
        
        
        
        ]),
      ),
    );
  },
);
  }

  String convertApiDateTimeToFormattedTime(String dateTimeString) {
    // Parse the ISO 8601 date string to DateTime
    DateTime dateTime = DateTime.parse(dateTimeString);

    // Format to a readable time string (e.g., "12:00 AM" or "12:00 PM")
    return DateFormat('hh:mm a').format(dateTime);
  }
}
