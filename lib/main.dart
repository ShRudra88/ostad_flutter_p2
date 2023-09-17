import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  mysnacber(message, context)
  {
     return ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(content: Text(message),)
     );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              title: Text('Rudra'),
              backgroundColor: Colors.purple,
              //centerTitle: true,
              toolbarHeight: 70,
              titleSpacing: 10,
              actions: [
                IconButton(onPressed: (){mysnacber('Home', context);}, icon: Icon(Icons.home)),
                IconButton(onPressed: (){mysnacber("Search", context);}, icon: Icon(Icons.search)),
                IconButton(onPressed: (){mysnacber("Profile", context);}, icon: Icon(Icons.account_circle_rounded))
              ],
            ),

            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              backgroundColor: Colors.blueGrey,
              onPressed: (){
                mysnacber("Floating action button", context);
              },
            ),

            bottomNavigationBar: BottomNavigationBar(
              currentIndex: 1,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.message),label: 'Message'),
                BottomNavigationBarItem(icon: Icon(Icons.person),label: 'profile'),
              ],
            ),

            drawer: Drawer(
              child: ListView(
                children: [
                  DrawerHeader(child: Text("Riyan")),
                  ListTile(title: Text("Home")),
                  ListTile(title: Text("Class")),
                  ListTile(title: Text("Contack")),
                ],
              ),
            ),
          ),
    );
  }
}
