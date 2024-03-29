import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './views/history.dart';
import './views/dail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '电话',
      color: Colors.blue,
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  int _counter = 0;

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Container(
            padding: EdgeInsets.only(left: 20),
            color: Colors.white,
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  icon: Icon(Icons.search),
                  hintText: '搜索联系人',
                  border: InputBorder.none),
            ),
          ),
          bottom: TabBar(
            controller: _tabController,
            labelPadding: EdgeInsets.only(left: 50, right: 50),
            isScrollable: true,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.star)),
              Tab(icon: Icon(Icons.history)),
              Tab(icon: Icon(Icons.people))
            ],
          )),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Text("phone"),
          History(),
          Text("people"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Dail()),
          )
        },
        tooltip: 'Increment',
        child: Icon(Icons.dialpad),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
