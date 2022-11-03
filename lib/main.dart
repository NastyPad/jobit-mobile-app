import 'dart:io';

import 'package:flutter/material.dart';
import 'package:jobit_mobile_app/screens/developer_profile_screen.dart';
import 'screens/job_details_screen.dart';
import 'screens/enterprise_profile.dart';
import 'screens/find_postulant.dart';

import 'models/user_model.dart';
import 'services/user_service.dart';
import 'dart:developer';


class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

void main() {
  HttpOverrides.global = MyHttpOverrides();
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
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber,
            title: Text("JoBit"),
          ),
          body:
<<<<<<< HEAD
          DeveloperProfileScreen(userBio, userSpecialities, userPhoto)
        //JobDetailsScreen("Frontend Developer") DeveloperProfileScreen(userName, userBio, userSpecialities, userPhoto)
      ),
=======
              find_postulant() //DeveloperProfileScreen(userName, userBio, userSpecialities, userPhoto)
          ),
>>>>>>> bc169fe2e275efd17d951d72a24add34207c786b
    );
  }
}
