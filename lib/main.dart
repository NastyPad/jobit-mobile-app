import 'dart:io';
import 'package:flutter/material.dart';
import 'package:jobit_mobile_app/screens/ads_job_petitioner_screen.dart';
import 'package:jobit_mobile_app/screens/chat_recruiter.dart';
import 'package:jobit_mobile_app/screens/developer_profile_screen.dart';
import 'package:jobit_mobile_app/screens/enterprise_profile.dart';
import 'package:jobit_mobile_app/screens/find_postulant.dart';
import 'package:jobit_mobile_app/screens/developer_profile_screen_send.dart';
import 'package:jobit_mobile_app/screens/home_page.dart';
import 'package:jobit_mobile_app/screens/job_details_screen.dart';
import 'package:jobit_mobile_app/screens/login_page.dart';
import 'package:jobit_mobile_app/screens/notifications.dart';
import 'package:jobit_mobile_app/screens/register_employee_page.dart';
import 'package:jobit_mobile_app/screens/register_employer_page.dart';
import 'package:jobit_mobile_app/screens/register_page.dart';
import 'package:jobit_mobile_app/screens/terminos_y_condiciones.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  HttpOverrides.global = MyHttpOverrides();

  debugPrint("Hola");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //UserAgentClient userAgentClient = UserAgentClient();
    //userAgentClient.getUserById(0); //user = User(value.userId, value.username, value.firstName, value.lastName)

    String userBio =
        "I've been studying at UPC since 2019. In all my student path, I've been developing apps with different frameworks and technologies for university projects in each semester. I have domain in Spring Boot and .NET in server side applications. In the other hand, for client side applications, I utilize Vue.";
    List<String> userSpecialities = ["Mobile Developer", "UX Designer"];
    String userPhoto =
        "https://media-exp1.licdn.com/dms/image/C4E03AQEaCD0tXb9irA/profile-displayphoto-shrink_800_800/0/1659332141355?e=1671667200&v=beta&t=jK6mukdv-183ti6ZgalC2vi_5nZc75QwyoQc8ESMKXQ";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      routes: {
        'register': (context) => RegisterPage(),
        'login': (context) => LoginPage(),
        'home': (context) => HomePage(),
        'job_details': (context) => JobDetailsScreen(''),
        'find_postulant': (context) => find_postulant(),
        'enterprise_profile': (context) => enterprise_profile(),
        'notifications': (context) => Notifications(),
        'home_recruiter': (context) => AdsJob(),
        'terms_conditions': (context) => TermsAndConditionsPage(),

      },
      home: Scaffold(
              extendBodyBehindAppBar: true,

        
        body:
        LoginPage(),
        // find_postulant(),
        // LoginPage(),
          // AdsJob(),
      ),
    );
  }
}
