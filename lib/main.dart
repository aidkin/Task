import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  GlobalKey<ScaffoldState> _key = GlobalKey();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Widget _icon(IconData icon, {Color color = Colors.blue}) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(13)),
        color: Theme.of(context).backgroundColor,
      ),
      child: InkWell(
        onTap: () {
          _key.currentState.openDrawer();
        },
        child: Icon(
          icon,
          color: color,
        ),
      ),
    );
  }

  bool isHomePageSelected = true;
  Widget _appBar() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          RotatedBox(
            quarterTurns: 4,
            child: _icon(Icons.menu, color: Colors.black54),
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(13)),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Color(0xfff8f8f8),
                      blurRadius: 10,
                      spreadRadius: 10),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(leading: _appBar()),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Center(child:Container(
                padding: EdgeInsets.fromLTRB(25, 25, 25, 25),
                child: Text('Test Company',
                    style: TextStyle(fontSize: 26)))),

            Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                child: Text('Aty Zhoni',
                    style: TextStyle(fontSize: 26))),
            Container(height: 1, color:Colors.black),
            ListTile(
              title: Text('Продажа билетов'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Список администраторов'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Автобусы'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Статистика'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Пассажиры'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Расписание'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('История'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Настройки'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailPage(index)));
          },
          child: Card(
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 200,
                            height: 200,
                            child: Image.network(
                              'https://www.kindpng.com/picc/m/126-1268529_bus-front-png-autobus-png-front-transparent-png.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          Text('YUTONG',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('KZ 123'),
                                  Text('ABC'),
                                ],
                              ),
                              Container(width: 10),
                              Column(
                                children: [
                                  Text('53 мест'),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text('Алматы - Сарыагаш'),
                          Container(height: 30),
                          Text('Отправление',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Дата - 06.02.2020 Thu'),
                          Text('Время - 19:30'),
                          Text('Прибытие',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Дата - 07.02.2020 Thu'),
                          Text('Время - 18:36'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
