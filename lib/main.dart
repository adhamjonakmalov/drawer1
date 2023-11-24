import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Drawer'),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(color: Colors.blue),
                child: Container(
                  color: Colors.blue,
                  width: double.infinity,
                  height: double.infinity,
                  child: const Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage('https://voilechic.ca/cdn/shop/products/MochaMousseInstantHijab_800x.jpg?v=1673916889'),
                      ),
                      Text(
                        'Sophia',
                        style: TextStyle(fontSize: 27, color: Colors.white),
                      ),
                      Text(
                        '@sophia.com',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.home_outlined,
                  size: 40,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.favorite_outlined,
                  size: 40,
                ),
                title: Text(
                  'Favorites',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.workspaces,
                  size: 40,
                ),
                title: Text(
                  'Workflow',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.update,
                  size: 40,
                ),
                title: Text(
                  'Updates',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                color: Colors.black,
                width: 300,
                height: 1,
              ),
              const ListTile(
                leading: Icon(
                  Icons.plumbing_outlined,
                  size: 40,
                ),
                title: Text(
                  'Plugins',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.notifications_outlined,
                  size: 40,
                ),
                title: Text(
                  'Notifications',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
