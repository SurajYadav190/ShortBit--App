import 'dart:async';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shortbit/intro_screen/intro_screens.dart';
import 'package:shortbit/utils/common_methods/navigation_method.dart';
import 'package:shortbit/utils/constants.dart';

import '../login_screen/bloc/login_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;
  int count = 0;

  @override
  void initState() {
    AwesomeNotifications().isNotificationAllowed().then((value) {
      if (!value) {
        AwesomeNotifications().requestPermissionToSendNotifications();
      }
    });

    initFunction();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/splash_screen_logo.png",
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.width * 0.7,
            ),
          ],
        ),
      ),
    );
  }

  void initFunction() {
    // firebaseInit();
    startTimer();
  }

  // void firebaseInit() async {
  //   await Permission.notification.isDenied.then((value) {
  //     if (value) {
  //       Permission.notification.request();
  //     }
  //   });
  //
  //   await Firebase.initializeApp(
  //       // options: DefaultFirebaseOptions.currentPlatform,
  //       );
  //
  //   FirebaseMessaging.onBackgroundMessage(notificationShow);
  //
  //   AwesomeNotifications().initialize(
  //     null,
  //     [
  //       NotificationChannel(
  //           channelGroupKey: 'basic_channel_group',
  //           channelKey: 'basic_channel',
  //           channelName: 'Basic notifications',
  //           channelDescription: 'Notification channel for course',
  //           // defaultColor: appTheme,
  //           playSound: true,
  //           importance: NotificationImportance.High,
  //           ledColor: Colors.white)
  //     ],
  //     channelGroups: [
  //       NotificationChannelGroup(
  //           channelGroupName: 'Basic group',
  //           channelGroupKey: 'basic_channel_group'),
  //     ],
  //     debug: true,
  //   );
  //
  //   await FirebaseMessaging.instance
  //       .setForegroundNotificationPresentationOptions(
  //     alert: true,
  //     badge: true,
  //     sound: true,
  //   );
  //
  //   FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  //     print('Got a message whilst in the foreground!');
  //     print('Message data: ${message.data}');
  //
  //     if (message.notification != null) {
  //       print('Message also contained a notification: ${message.notification}');
  //
  //       notificationShow(message);
  //     }
  //   });
  //
  //   FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
  //     log('notification clicked ');
  //     navPush(context: context, action: CreateAccount());
  //   });
  // }
  //
  // Future<void> notificationShow(RemoteMessage message) async {
  //   print('message.data.body ${message.data['body']}');
  //   print('message.data.title ${message.data['title']}');
  //
  //   AwesomeNotifications().createNotification(
  //       content: NotificationContent(
  //     id: 0,
  //     channelKey: 'basic_channel',
  //     body: message.data['body'],
  //     title: message.data['title'],
  //   ));
  // }

  void startTimer() {
    final loginBloc = context.read<LoginBloc>();
    _timer = Timer.periodic(
      Duration(seconds: 1),
      (Timer timer) async {
        count++;
        if (count == 3) {
          _timer?.cancel();
          SharedPreferences _prefs = await SharedPreferences.getInstance();
          String? tokenIdd;

          tokenIdd = await _prefs.getString(UserToken);

          if (tokenIdd != null) {
            loginBloc.add(GetProfileApi(context: context));
          } else {
            navPushRemove(context: context, action: IntroScreen());
            //navPushRemove(context: context, action: BottomNavigation());
            // navPushRemove(context: context, action: ChatterScreen());
            // navPushRemove(context: context, action: IntroScreen());
            // navPushRemove(context: context, action: BottomNavigation());
            // navPushRemove(context: context, action: MyHomePage());
          }
        }
      },
    );
  }
}
