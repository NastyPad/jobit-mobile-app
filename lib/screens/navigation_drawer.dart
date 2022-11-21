import 'package:flutter/material.dart';
import 'package:jobit_mobile_app/screens/chat_recruiter.dart';
import 'package:jobit_mobile_app/screens/home_page.dart';
import 'package:jobit_mobile_app/screens/notifications.dart';
import 'package:jobit_mobile_app/screens/notifications_postulant.dart';
import 'package:jobit_mobile_app/screens/premium_page.dart';
import 'package:jobit_mobile_app/screens/developer_profile_screen.dart';

class NavigationDrawer extends StatelessWidget {
  String userBio =
      "I've been studying at UPC since 2019. In all my student path, I've been developing apps with different frameworks and technologies for university projects in each semester. I have domain in Spring Boot and .NET in server side applications. In the other hand, for client side applications, I utilize Vue.";
  List<String> userSpecialities = ["Mobile Developer", "UX Designer"];
  String userPhoto =
      "https://media-exp1.licdn.com/dms/image/C4E03AQEaCD0tXb9irA/profile-displayphoto-shrink_800_800/0/1659332141355?e=1671667200&v=beta&t=jK6mukdv-183ti6ZgalC2vi_5nZc75QwyoQc8ESMKXQ";


  @override
  Widget build(BuildContext context) =>Drawer(
    child: Container(
      alignment: Alignment.center,
      color: Colors.amber.shade600,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            buildMenuItems(context),
          ],
        ),
      ),
    ),
  );

  Widget buildMenuItems(BuildContext context)=> Column(
    children: [

      ListTile(
        title: const Center(
            child: Text(
              'INICIO',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),)
        ),
        onTap: ()=> Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context)=>const HomePage(),
        ),
        ),
      ),
      const Divider(
        color: Colors.white,
        thickness: 1,
        indent: 50,
        endIndent: 50,
      ),
      ListTile(
        title: const Center(
            child: Text(
              'PERFIL',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),)
        ),
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context)=>  DeveloperProfileScreen(userBio, userSpecialities, userPhoto) ,
          ));
        },
      ),
      const Divider(
        color: Colors.white,
        thickness: 1,
        indent: 50,
        endIndent: 50,
      ),
      ListTile(
          title: const Center(
              child: Text(
                'NOTIFICACIONES',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),)
          ),
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context)=>  NotificationsPostulant(),
          ));
        },
      ),
      const Divider(
        color: Colors.white,
        thickness: 1,
        indent: 50,
        endIndent: 50,
      ),
      ListTile(
        title: const Center(
            child: Text(
              'MENSAJES',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),)
        ),
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context)=>  ChatRecruiter(),
          ));
        },
      ),
      const Divider(
        color: Colors.white,
        thickness: 1,
        indent: 50,
        endIndent: 50,
      ),
      ListTile(
        title: const Center(
            child: Text(
              'PREMIUM',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),)
        ),
        onTap: (){
          //close navigator drawer before
          Navigator.pop(context);
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context)=> const PremiumPage(),
          ));
        },
      ),
      const Divider(
        color: Colors.white,
        thickness: 1,
        indent: 50,
        endIndent: 50,
      ),
      ListTile(
        title: const Center(
            child: Text(
              'CERRAR SESION',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),)
        ),
        onTap: ()=>{
          Navigator.pushNamed(context, 'login'),
        },
      ),
    ],
  );
}