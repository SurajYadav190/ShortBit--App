import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shortbit/message_screen/components/all_host.dart';
import 'package:shortbit/message_screen/components/inbox.dart';

import '../create_account/bloc/create_account_bloc.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    initFunction();

    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages'),
        // You can customize the app bar here
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TabBar(
            controller: _tabController,
            tabs: [
              Tab(text: 'Inbox'),
              Tab(text: 'Host'),
            ],
            labelColor: Colors.black, // Change the selected tab color if needed
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                InboxMsg(),
                AllHost(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void initFunction() {
    final createAccountBloc = context.read<CreateAccountBloc>();

    createAccountBloc.add(GetUser());
  }
}
