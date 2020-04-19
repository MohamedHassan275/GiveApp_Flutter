import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class HomeTabBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeTabBarClick ();
  }


}

class HomeTabBarClick extends State<HomeTabBar> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
      fontSize: 15, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: RegisterCliant',
      style: optionStyle,
    ),
    Text(
      'Index 1: Home2',
      style: optionStyle,
    ),
    Text(
      'Index 2: LoginCliant',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar '),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('School'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}


class HomeDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Home Screen'),
        backgroundColor: Colors.indigo,
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.more_vert),
              onPressed: () => debugPrint('more')),
        ],
      ),
      body: new Container(
          alignment: Alignment.center,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "my name is Mohamed Hassan ",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              new Text(
                "i`m 24 years old  ",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              new Text(
                "i live in sohag saqulta ",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              new Text(
                "i`m work android developer ",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  color: Colors.indigoAccent,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          )),
    );
  }
}
