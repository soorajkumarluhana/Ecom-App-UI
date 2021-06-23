import 'package:flutter/material.dart';
import 'package:soorajkumarluhana/Home.dart';


class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentTab = 0;

  Widget currentScreen = HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: PageStorageBucket(), child: currentScreen),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              MaterialButton(
                  minWidth: 50,
                  onPressed: () {
                    setState(() {
                      currentScreen = HomePage();
                      currentTab = 0;
                    });
                  },
                  child: Icon(Icons.home,
                  size: 40,
                  color: currentTab == 0 ? Colors.black : Colors.blueGrey,)),
               MaterialButton(
                  minWidth: 50,
                  onPressed: () {
                    setState(() {
                      currentScreen = HomePage();
                      currentTab = 1;
                    });
                  },
                  child: Icon(Icons.favorite,
                  size: 40,
                  color: currentTab == 1 ? Colors.black : Colors.blueGrey,)),
                  
                  MaterialButton(
                  minWidth: 50,
                  onPressed: () {
                    setState(() {
                      currentScreen = HomePage();
                      currentTab = 2;
                    });
                  },
                  child: Icon(Icons.shop,
                  size: 40,
                  color: currentTab == 2 ? Colors.black : Colors.blueGrey,)),
                 
                  MaterialButton(
                  minWidth: 50,
                  onPressed: () {
                    setState(() {
                      currentScreen = HomePage();
                      currentTab = 3;
                    });
                  },
                  child: Icon(Icons.person, 
                  size: 40,
                  color: currentTab == 3 ? Colors.black : Colors.blueGrey,)),

            ],
          ),
        ),
      ),
     floatingActionButton: Container(
       alignment: Alignment.bottomCenter,
       child: FloatingActionButton(
         onPressed: () {
         },
         child: Icon(Icons.search),
         backgroundColor: Colors.pink,
       ),
     ),

    );
  }
}
