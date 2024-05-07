import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shortbit/chat/chat.dart';
import 'package:shortbit/create_account/bloc/create_account_bloc.dart';
import 'package:shortbit/message_screen/bloc/message_screen_bloc.dart';
import 'package:shortbit/utils/app_colors.dart';
import 'package:shortbit/utils/common_methods/navigation_method.dart';
import 'package:shortbit/utils/custom_widgets/custom_bounce.dart';

class InboxMsg extends StatefulWidget {
  const InboxMsg({super.key});

  @override
  State<InboxMsg> createState() => _InboxMsgState();
}

class _InboxMsgState extends State<InboxMsg> {
  TabController? tabController;

  final firestore = FirebaseFirestore.instance;

  @override
  void initState() {
    initFunction();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              purpleBackground(),
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 15, top: 30),
                child: Column(
                  children: [
                    headingSection(),
                    SizedBox(
                      height: 10,
                    ),
                    // searchSection(),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'Messages',
              style: TextStyle(
                color: Color(0xFF2E2E2E),
                fontSize: 17,
                fontFamily: 'Sk-Modernist',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(child: messagesList(context))
        ],
      ),
    );
  }

  Widget purpleBackground() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Column(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  appPurpleGradient2Color,
                  appPurpleGradient1Color,
                ],
              )),
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.white,
            )
          ],
        ),
        Container(
          height: 15,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          width: double.infinity,
        ),
      ],
    );
  }

  Widget headingSection() {
    return Row(
      children: [
        CustomBounce(
          onPressed: () {
            navPop(context: context);
          },
          child: Container(
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              )),
        ),
        SizedBox(
          width: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Messages',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Sk-Modernist',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget searchSection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: TextFormField(
          decoration: InputDecoration(
              hintText: "Search",
              prefixIcon: IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/icons/searchIcon.png",
                    height: 20,
                  )),
              border: InputBorder.none),
        ),
      ),
    );
  }

  Widget messagesList(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 1),
        child: BlocBuilder<MessageScreenBloc, MessageScreenState>(
          builder: (context, state) {
            return state.messageGroup == null
                ? SizedBox()
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.messageGroup!.data!.length,
                    itemBuilder: (context, index) {
                      return CustomBounce(
                        onPressed: () {
                          final createAccountBloc =
                              context.read<CreateAccountBloc>();

                          navPush(
                              context: context,
                              action: Chat(
                                hostId: state
                                    .messageGroup!.data![index].toId!.sId
                                    .toString(),
                                userId: createAccountBloc
                                    .state.getProfileModel!.data!.sId
                                    .toString(),
                                senderName: state
                                    .messageGroup!.data![index].toId!.name
                                    .toString(),
                                hostProfileImage: state
                                    .messageGroup!.data![index].toId!.avtar
                                    .toString(),
                                userName: createAccountBloc
                                    .state.getProfileModel!.data!.name
                                    .toString(),
                              ));
                        },
                        child: Container(
                          color: Colors.white,
                          padding: const EdgeInsets.only(
                              left: 5, right: 5, bottom: 10, top: 1),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      state.messageGroup!.data![index].toId!
                                                  .avtar
                                                  .toString() ==
                                              ""
                                          ? ClipOval(
                                              child: Image.asset(
                                              "assets/icons/live_host_profile.png",
                                              fit: BoxFit.fill,
                                              height: 70,
                                              width: 70,
                                            ))
                                          : ClipOval(
                                              child: Image.network(
                                              state.messageGroup!.data![index]
                                                  .toId!.avtar
                                                  .toString(),
                                              fit: BoxFit.fill,
                                              height: 70,
                                              width: 70,
                                            )),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            state.messageGroup!.data![index]
                                                .toId!.name
                                                .toString(),
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: height * 0.018),
                                          ),
                                          SizedBox(
                                            height: 1,
                                          ),
                                          Text(
                                            'Followers : ${state.messageGroup!.data![index].toId!.followersCount.toString()}',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: height * 0.0145),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "13 min",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: height * 0.0145),
                                      ),
                                      Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: appPurpleColor),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              "3",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: height * 0.0145),
                                            ),
                                          )),
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 70,
                                  ),
                                  Expanded(
                                      child: Divider(
                                    height: 1,
                                    color: Colors.grey.shade200,
                                  ))
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
          },
        ));
  }

  void initFunction() {
    // final messageScreenBloc = context.read<MessageScreenBloc>();
    // messageScreenBloc.add(GetAllMessageGroupApi());

    final messageScreenBloc = context.read<MessageScreenBloc>();
    messageScreenBloc.add(GetAllMessageGroupApi());
  }
}
