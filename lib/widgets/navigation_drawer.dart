import 'package:flutter/material.dart';
import 'package:login_jobit/home_page.dart';
import 'package:login_jobit/messages_page.dart';
import 'package:login_jobit/notifications_page.dart';
import 'package:login_jobit/premium_page.dart';
import 'package:login_jobit/profile_page.dart';

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