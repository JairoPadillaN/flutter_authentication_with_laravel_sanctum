import 'package:flutter/material.dart';
import 'package:flutter_authentication_with_laravel_sanctum/screen/login-screen.dart';
import 'package:flutter_authentication_with_laravel_sanctum/screen/posts-screen.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text('Jairo Padilla Nava'),
          ),
          ListTile(
            title: Text('Posts'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PostsScreen()));
            },
          ),
          ListTile(
            title: Text('Iniciar Sesión'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
          )
        ],
      ),
    );
  }
}
