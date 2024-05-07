import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shortbit/profile_screen/HelpCenterPage/bloc/help_page_bloc.dart';
import 'package:shortbit/profile_screen/HelpCenterPage/components/WidgetContainerhelpcenter.dart';

import 'package:shortbit/profile_screen/components/containerBoxwidget.dart';
import 'package:shortbit/utils/common_methods/navigation_method.dart';

import 'components/widgetContainerHelp.dart';

class HelpCenterPage extends StatefulWidget {
  const HelpCenterPage({super.key});

  @override
  State<HelpCenterPage> createState() => _HelpCenterPageState();
}

class _HelpCenterPageState extends State<HelpCenterPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    inFUn();
  }

  inFUn(){

    final bloc=context.read<HelpPageBloc>();

    bloc.add(FaqAPi());

  }

  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    var index = 0;
    return BlocBuilder<HelpPageBloc, HelpPageState>(
  builder: (context, state) {
    return

      DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              // toolbarHeight: height * 0.08,
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
              leadingWidth: 80,
              title: Text(
                'Help Center',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  height: 0.04,
                ),
              ),
              centerTitle: true,
            ),
            body: Column(children: [

              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: height * 0.06,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(color: Colors.grey.shade300, width: 3)),
                  child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              "assets/icon/Vector7.png",
                              height: 30,
                            ),
                          ),
                          hintText: "Search",
                          hintStyle:
                              TextStyle(fontSize: 16, color: Colors.grey),
                          prefix: Padding(
                            padding: const EdgeInsets.only(top: 15, left: 10),
                          ),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(25)))),
                ),
              ),
              TabBar(
                  dividerHeight: 3,
                  dividerColor: Colors.black26,
                  indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(
                        width: width * 0.040,
                        color: Colors.blue.shade900,
                        strokeAlign: double.minPositive,
                      ),
                      borderRadius: BorderRadius.circular(90)),
                  tabs: [
                    Tab(
                        child: Container(
                      height: height * 0.030,
                      child: Text(
                        "FAQ",
                        style: TextStyle(
                          color: Color(0xFF6000FF),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )),
                    Tab(
                      child: Container(
                          height: height * 0.030,
                          child: Text(
                            "Contact Us",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          )),
                    )
                  ]),

              state.faqModel==null  ? Center(child: CircularProgressIndicator()):

              Expanded(
                child: TabBarView(children: [

                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.faqModel!.data!.length,
                    itemBuilder: (context, index) {
                      var temp=state.faqModel!.data![index];
                    return Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: WidgetHelpContainer(
                            text:temp.question.toString() ,
                            text1: temp.answer.toString(),
                          ),
                        ),
                      ],
                    );

                  },),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        children: [
                          WidgetHelpContainer(
                            text: 'Customer Service',
                            text1: '',
                          ),
                          WidgetHelpContainer(
                            text: 'WhatsApp',
                            text1: '',
                          ),
                          WidgetHelpContainer(
                            text: 'Website',
                            text1: '',
                          ),
                          WidgetHelpContainer(
                            text: 'Facebook',
                            text1: '',
                          ),
                          WidgetHelpContainer(
                            text: 'Twitter',
                            text1: '',
                          ),
                          WidgetHelpContainer(
                            text: 'Instagram',
                            text1: '',
                          ),
                        ],
                      ),
                    ),
                  )
                ]),
              ),
            ])));
  },
);
  }
}
