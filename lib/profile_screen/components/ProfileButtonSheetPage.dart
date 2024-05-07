import 'package:flutter/material.dart';
import 'package:shortbit/utils/common_methods/navigation_method.dart';

void main() => runApp(const ShowBottomSheet());

class ShowBottomSheet extends StatelessWidget {
  const ShowBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: const Text('Bottomsheet')),
        body: const ShowBottomSheetExample(),
      ),
    );
  }
}

class ShowBottomSheetExample extends StatelessWidget {
  const ShowBottomSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            child: const Text('showBottomSheet'),
            onPressed: () {
              Scaffold.of(context).showBottomSheet<void>(
                (BuildContext context) {
                  return Container(
                      height: height * 0.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25)),
                          border: Border.all(color: Colors.grey)),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 7),
                              child: Text(
                                "Comments",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Divider(),
                            ),
                            ContainerCommets(
                                text1: "Vishal",
                                text2:
                                    "you think or feel about something\nadadadadadaddadad"),
                            SizedBox(
                              height: 10,
                            ),
                            ContainerCommets(
                                text1: "Shivendra Singh",
                                text2: "you think or feel about something"),
                            SizedBox(
                              height: 10,
                            ),
                            ContainerCommets(
                                text1: "Ajay Mishra",
                                text2: "you think or feel about something"),
                            SizedBox(
                              height: 10,
                            ),
                            ContainerCommets(
                                text1: "Virat",
                                text2: "you think or feel about something"),
                            SizedBox(
                              height: 10,
                            ),
                            ContainerCommets(
                                text1: "Aman",
                                text2: "you think or feel about something"),
                            SizedBox(
                              height: 10,
                            ),
                            ContainerCommets(
                                text1: "Rahul",
                                text2: "you think or feel about something"),
                            SizedBox(
                              height: 10,
                            ),
                            ContainerCommets(
                                text1: "ashidsd",
                                text2: "you think or feel about something"),
                            SizedBox(
                              height: 10,
                            ),
                            ContainerCommets(
                                text1: "JsonRa",
                                text2: "you think or feel about something"),
                            SizedBox(
                              height: 10,
                            ),
                            ContainerCommets(
                                text1: "Somewhe",
                                text2: "you think or feel about something"),
                            SizedBox(
                              height: 10,
                            ),
                            ContainerCommets(
                                text1: "Nothethe",
                                text2: "you think or feel about something"),
                          ],
                        ),
                      ));
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class ContainerCommets extends StatelessWidget {
  final String text1;
  final String text2;

  ContainerCommets({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
            child: Image.asset("assets/icon/photo.png",
                width: 30, height: 30, fit: BoxFit.fill)),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text1,
              style: TextStyle(fontSize: 20),
            ),
            Text(text2),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15, left: 10),
          child: Text("14h"),
        )
      ],
    ));
  }
}
