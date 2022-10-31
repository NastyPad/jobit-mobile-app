import 'package:flutter/material.dart';
import 'package:jobit_mobile_app/screens/home_screen.dart';
import 'package:jobit_mobile_app/screens/messages_screen.dart';
import 'package:jobit_mobile_app/screens/notifications_screen.dart';
import 'package:jobit_mobile_app/screens/premium_screen.dart';
import 'package:jobit_mobile_app/screens/profile_screen.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

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
          builder: (context)=>const HomeScreen(),
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
            builder: (context)=> const ProfilePage(),
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
            builder: (context)=> const NotificationsPage(),
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
            builder: (context)=> const MessagesPage(),
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