import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentPage = 0;
  final List<Widget> _pages = [
    HomePage(),
    EducationPage(),
    BusinessPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Menu'),
          backgroundColor: Colors.deepPurple,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentPage,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Education',
              backgroundColor: Colors.cyan,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Business',
              backgroundColor: Colors.orange,
            ),
          ],
        ),
        body: AnimatedSwitcher(
          duration: Duration(milliseconds: 500),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return ScaleTransition(child: child, scale: animation);
          },
          child: _pages[_currentPage],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Text(
          'Bienvenido a la página de Home',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class EducationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Education'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Text(
          'Bienvenido a la página de Education',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class BusinessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Business'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Text(
          'Bienvenido a la página de Business',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
