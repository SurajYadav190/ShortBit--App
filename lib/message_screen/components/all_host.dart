import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shortbit/chat/chat.dart';
import 'package:shortbit/create_account/bloc/create_account_bloc.dart';
import 'package:shortbit/message_screen/bloc/message_screen_bloc.dart';
import 'package:shortbit/utils/app_colors.dart';
import 'package:shortbit/utils/common_methods/navigation_method.dart';
import 'package:shortbit/utils/custom_widgets/custom_bounce.dart';

class AllHost extends StatefulWidget {
  const AllHost({super.key});

  @override
  State<AllHost> createState() => _AllHostState();
}

class _AllHostState extends State<AllHost> {
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
          // Padding(
          //   padding: const EdgeInsets.only(left: 15),
          //   child: Text(
          //     'Messages',
          //     style: TextStyle(
          //       color: Color(0xFF2E2E2E),
          //       fontSize: 17,
          //       fontFamily: 'Sk-Modernist',
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          // ),
          Expanded(child: messagesList(context))
        ],
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
            return state.getAllHostModel == null
                ? SizedBox()
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.getAllHostModel!.data!.length,
                    itemBuilder: (context, index) {
                      return CustomBounce(
                        onPressed: () {
                          final createAccountBloc =
                              context.read<CreateAccountBloc>();

                          navPush(
                              context: context,
                              action: Chat(
                                hostId: state.getAllHostModel!.data![index].sId
                                    .toString(),
                                userId: createAccountBloc
                                    .state.getProfileModel!.data!.sId
                                    .toString(),
                                senderName: state
                                    .getAllHostModel!.data![index].name
                                    .toString(),
                                hostProfileImage: state
                                    .getAllHostModel!.data![index].profileImage
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
                                      state.getAllHostModel!.data![index]
                                                  .profileImage ==
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
                                              state.getAllHostModel!
                                                  .data![index].profileImage
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
                                            state.getAllHostModel!.data![index]
                                                .name
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
                                            'Age : ${state.getAllHostModel?.data?[index].age}',
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
    final messageScreenBloc = context.read<MessageScreenBloc>();
    messageScreenBloc.add(GetAllHostApi());
  }
}
