import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20), 
              ),
              onPressed: () {
                print("Test");
              },
              child: Text(
                "Elevated Button",
              )
            ),
            // OutlinedButton(
            //   style: OutlinedButton.styleFrom(
            //     // backgroundColor: Colors.black,
            //     // foregroundColor: Colors.white,
            //     padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            //   ),
            //   onPressed: () {
            //     print("Outlined Button Presed");
            //   },
            //   child: Text(
            //     "Outlined Button"
            //   )
            // ),
            // TextButton(
            //   style: TextButton.styleFrom(
            //     // backgroundColor: Colors.black,
            //     // foregroundColor: Colors.white,
            //     padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20), 
            //   ),
            //   onPressed: () {
            //     print("Text Button Presed");
            //   },
            //   child: Text(
            //     "Text Button"
            //   ),
            // ),
            Text("Home Page")
          ],
        ),
      ),
    ),

    Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                width: 185,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Image.asset('assets/pc.png',)
                    ),
                    Text(
                      "Author: Yogawan",
                      style: TextStyle(
                        color: Color(0xFF171717),
                        fontSize: 9,
                      ),
                    ),
                    Text(
                      "Lorem ipsum sit amet...",
                      style: TextStyle(
                        color: Color(0xFF171717),
                        fontSize: 16,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      ),
                      onPressed: () {
                        print("Test");
                      },
                      child: Text(
                        "Read Article",
                      )
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: 185,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Image.asset('assets/pc.png',)
                    ),
                    Text(
                      "Author: Yogawan",
                      style: TextStyle(
                        color: Color(0xFF171717),
                        fontSize: 9,
                      ),
                    ),
                    Text(
                      "Lorem ipsum sit amet...",
                      style: TextStyle(
                        color: Color(0xFF171717),
                        fontSize: 16,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      ),
                      onPressed: () {
                        print("Test");
                      },
                      child: Text(
                        "Read Article",
                      )
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                width: 185,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Image.asset('assets/pc.png',)
                    ),
                    Text(
                      "Author: Yogawan",
                      style: TextStyle(
                        color: Color(0xFF171717),
                        fontSize: 9,
                      ),
                    ),
                    Text(
                      "Lorem ipsum sit amet...",
                      style: TextStyle(
                        color: Color(0xFF171717),
                        fontSize: 16,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      ),
                      onPressed: () {
                        print("Test");
                      },
                      child: Text(
                        "Read Article",
                      )
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: 185,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Image.asset('assets/pc.png',)
                    ),
                    Text(
                      "Author: Yogawan",
                      style: TextStyle(
                        color: Color(0xFF171717),
                        fontSize: 9,
                      ),
                    ),
                    Text(
                      "Lorem ipsum sit amet...",
                      style: TextStyle(
                        color: Color(0xFF171717),
                        fontSize: 16,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      ),
                      onPressed: () {
                        print("Test");
                      },
                      child: Text(
                        "Read Article",
                      )
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      )
    ),

    Text('Search Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),

    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/home.png',
              width: 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/news.png',
              width: 24,
            ),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/search.png',
              width: 24,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/profile.png',
              width: 24,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF171717),
        // unselectedItemColor: Color(0xFF),
        onTap: _onItemTapped,
        showUnselectedLabels: true,
      ),
    );
  }
}