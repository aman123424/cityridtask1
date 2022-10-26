import 'package:flutter/material.dart';
import 'package:task1/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(

      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    Home(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: School',
      style: optionStyle,
    ),
    Text(
      'Index 4: School',
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
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height*0.09),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AppBar(
            title: Text(
                "citynect",
              style: TextStyle(
                color: Colors.grey[800],
                fontWeight: FontWeight.w500,
                fontSize: 48,
              ),
            ),
            elevation: 0,
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none_sharp)),
              IconButton(onPressed: () {}, icon: Icon(Icons.message))
            ],
            actionsIconTheme: IconThemeData(
              color: Colors.black38,
              size: 36
            ),
            backgroundColor: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.black38,size: 30,),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger_rounded,color: Colors.black38,size: 30,),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outlined,color: Colors.blueAccent,size: 60,),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_note_sharp, color: Colors.black38,size: 30,),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle,color: Colors.black38,size: 30,),
            label: ""
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedFontSize: 0,
      ),
    );
  }
}
