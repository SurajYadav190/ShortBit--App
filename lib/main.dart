import 'dart:developer';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shortbit/bottom_navigation/bloc/bottom_navigation_bloc.dart';
import 'package:shortbit/create_account/bloc/create_account_bloc.dart';
import 'package:shortbit/home_page/bloc/home_page_bloc.dart';
import 'package:shortbit/host_live_call/bloc/host_live_call_bloc.dart';
import 'package:shortbit/host_profile/bloc/host_profile_bloc.dart';
import 'package:shortbit/intro_screen/bloc/intro_screen_bloc.dart';
import 'package:shortbit/join_live_video/bloc/join_live_video_bloc.dart';
import 'package:shortbit/login_screen/bloc/login_bloc.dart';
import 'package:shortbit/message_screen/bloc/message_screen_bloc.dart';
import 'package:shortbit/profile_screen/AvatarPage/bloc/avtar_bloc.dart';
import 'package:shortbit/profile_screen/EditProfilePage/bloc/updateprofile_bloc.dart';
import 'package:shortbit/profile_screen/HelpCenterPage/bloc/help_page_bloc.dart';
import 'package:shortbit/profile_screen/WalletPage/bloc/bloc_wallet_bloc.dart';
import 'package:shortbit/shortVedioScreen/bloc/short_video_bloc.dart';
import 'package:shortbit/splash_screen/splash_screen.dart';
import 'package:shortbit/tell_us_about_yourself/bloc/user_update_details_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  getDeviceToken();
  permission_manager();
  AwesomeNotifications().initialize(
    null,
    [
      NotificationChannel(
          channelGroupKey: 'basic_channel_group',
          channelKey: 'basic_channel',
          channelName: 'Basic notifications',
          channelDescription: 'Notification channel for course',
          // defaultColor: appTheme,
          playSound: true,
          importance: NotificationImportance.High,
          ledColor: Colors.white)
    ],
    channelGroups: [
      NotificationChannelGroup(
          channelGroupName: 'Basic group',
          channelGroupKey: 'basic_channel_group'),
    ],
    debug: true,
  );

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );

  // FirebaseMessaging.onBackgroundMessage(notificationShow);

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    log('Got a message whilst in the foreground!');
    log('Message data: ${message.data}');

    if (message.notification != null) {
      log('Message also contained a notification: ${message.notification}');

      notificationShow(message);
    }
  });

  await FirebaseMessaging.instance.getInitialMessage().then((value) {
    log('getInitialMessage ');
  });

  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    /// works when app is in background

    log('====works when app is in background');
  });

  runApp(const MyApp());
}

Future<void> notificationShow(RemoteMessage message) async {
  log('message notification------------ ${message.notification}');
  log('message data------------ ${message.data}');

  AwesomeNotifications().createNotification(
      content: NotificationContent(
    id: 0,
    channelKey: 'basic_channel',
    body: message.notification?.body,
    title: message.notification?.title,
  ));
}

//to get FCM token
Future<String> getDeviceToken() async {
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  String? token = await messaging.getToken();

  log('-----firebase token ${token}');
  return token!;
}

permission_manager() async {
  var status = await Permission.camera.status;
  if (status.isDenied) {
    await Permission.camera.request();
  }

  var microphoneStaus = await Permission.microphone.status;
  if (microphoneStaus.isDenied) {
    await Permission.microphone.request();
  }

  await Permission.notification.isDenied.then((value) {
    if (value) {
      Permission.notification.request();
    }
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<IntroScreenBloc>(create: (_) => IntroScreenBloc()),
        BlocProvider<LoginBloc>(create: (_) => LoginBloc()),
        BlocProvider<HomePageBloc>(create: (_) => HomePageBloc()),
        BlocProvider<JoinLiveVideoBloc>(create: (_) => JoinLiveVideoBloc()),
        BlocProvider<BottomNavigationBloc>(
            create: (_) => BottomNavigationBloc()),
        BlocProvider<CreateAccountBloc>(create: (_) => CreateAccountBloc()),
        BlocProvider<UserUpdateDetailsBloc>(
            create: (_) => UserUpdateDetailsBloc()),
        BlocProvider<HostLiveCallBloc>(create: (_) => HostLiveCallBloc()),
        BlocProvider<BottomNavigationBloc>(
            create: (_) => BottomNavigationBloc()),
        BlocProvider<ShortVideoBloc>(create: (_) => ShortVideoBloc()),
        BlocProvider<HelpPageBloc>(create: (_) => HelpPageBloc()),
        BlocProvider<WalletBloc>(create: (_) => WalletBloc()),
        BlocProvider<MessageScreenBloc>(create: (_) => MessageScreenBloc()),
        BlocProvider<HostProfileBloc>(create: (_) => HostProfileBloc()),
        BlocProvider<AvtarBloc>(create: (_) => AvtarBloc()),
        BlocProvider<UpdateprofileBloc>(create: (_) => UpdateprofileBloc()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SplashScreen(),
        // home: HostProfileScreen(),
        // home: SplashScreen(),
      ),
    );
  }
}
