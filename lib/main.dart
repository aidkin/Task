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
              title: Text('?????????????? ??????????????'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('???????????? ??????????????????????????????'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('????????????????'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('????????????????????'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('??????????????????'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('????????????????????'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('??????????????'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('??????????????????'),
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
                                  Text('53 ????????'),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text('???????????? - ????????????????'),
                          Container(height: 30),
                          Text('??????????????????????',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('???????? - 06.02.2020 Thu'),
                          Text('?????????? - 19:30'),
                          Text('????????????????',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('???????? - 07.02.2020 Thu'),
                          Text('?????????? - 18:36'),
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



class DetailPage extends StatelessWidget {
  final int index;
  DetailPage(this.index);

  void _showModalSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return new Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Positioned(
                    child: Text(
                      "???????????????????? ?? ??????????????????",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18),
                    ),
                    top: 40,
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        border:
                        Border(bottom: BorderSide(color: Colors.black))),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Aigerim",
                          hintStyle: TextStyle(color: Colors.black)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        border:
                        Border(bottom: BorderSide(color: Colors.black))),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "77078836639",
                          hintStyle: TextStyle(color: Colors.black)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        border:
                        Border(bottom: BorderSide(color: Colors.black))),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "??????????",
                          hintStyle: TextStyle(color: Colors.green)),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white),
                            child: Center(
                              child: Text(
                                "??????????",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white),
                            child: Center(
                              child: Text(
                                "????????",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white),
                            child: Center(
                              child: Text(
                                "0 ?? ???????????? ",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white),
                            child: Center(
                              child: Text(
                                "3000",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.green),
                            child: Center(
                              child: Text(
                                "????????????????",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.green),
                            child: Center(
                              child: Text(
                                "?????????????????? ??????",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )),
                    ],
                  ),
                  Center(
                    child: Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.green),
                          child: Center(
                            child: Text(
                              "???????????????? ?????????????? ????????????",
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ),
                        )),
                  )
                ],
              ));
        });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('??????????????????'),
        ),
        body: ListView(children: <Widget>[
          DataTable(
            showCheckboxColumn: false,
            columns: [
              DataColumn(label: Text('??????', style: TextStyle(fontSize: 20))),
              DataColumn(label: Text('??????????', style: TextStyle(fontSize: 20))),
              DataColumn(label: Text('??????', style: TextStyle(fontSize: 20))),
            ],
            rows: [
              DataRow(
                  onSelectChanged: (value) {
                    _showModalSheet(context);
                  },
                  cells: [
                    DataCell(Text('Aigerim')),
                    DataCell(Text('0 A')),
                    DataCell(Text('OFFLINE',
                        style: TextStyle(
                            color: Colors.white,
                            backgroundColor: Colors.grey))),
                  ]),
              DataRow(
                  onSelectChanged: (value) {
                    _showModalSheet(context);
                  },
                  cells: [
                    DataCell(Text('Arlan')),
                    DataCell(Text('0 B')),
                    DataCell(Text('OFFLINE',
                        style: TextStyle(
                            color: Colors.white,
                            backgroundColor: Colors.grey))),
                  ]),
              DataRow(
                  onSelectChanged: (value) {
                    _showModalSheet(context);
                  },
                  cells: [
                    DataCell(Text('ASSEL')),
                    DataCell(Text('1')),
                    DataCell(Text('ONLINE',
                        style: TextStyle(
                            color: Colors.white,
                            backgroundColor: Colors.green))),
                  ]),
              DataRow(
                  onSelectChanged: (value) {
                    _showModalSheet(context);
                  },
                  cells: [
                    DataCell(Text('TEMIRLAN')),
                    DataCell(Text('1')),
                    DataCell(Text('ONLINE',
                        style: TextStyle(
                            color: Colors.white,
                            backgroundColor: Colors.green))),
                  ]),
            ],
          ),
          Center(
              child: Text(
                '?????????????????? ??????????',
                style: TextStyle(fontSize: 20),
              )),
          DataTable(
            columns: [
              DataColumn(label: Text('', style: TextStyle(fontSize: 20))),
              DataColumn(label: Text('', style: TextStyle(fontSize: 20))),
              DataColumn(label: Text('', style: TextStyle(fontSize: 20))),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('?????? ??????????')),
                DataCell(Text('0 A')),
                DataCell(Text('no type',
                    style: TextStyle(
                        color: Colors.white, backgroundColor: Colors.green))),
              ]),
              DataRow(cells: [
                DataCell(Text('?????? ??????????')),
                DataCell(Text('0 B')),
                DataCell(Text('no type',
                    style: TextStyle(
                        color: Colors.white, backgroundColor: Colors.green))),
              ]),
              DataRow(cells: [
                DataCell(Text('?????? ??????????')),
                DataCell(Text('0 B')),
                DataCell(Text('no type',
                    style: TextStyle(
                        color: Colors.white, backgroundColor: Colors.green))),
              ]),
              DataRow(cells: [
                DataCell(Text('?????? ??????????')),
                DataCell(Text('2')),
                DataCell(Text('no type',
                    style: TextStyle(
                        color: Colors.white, backgroundColor: Colors.green))),
              ]),
              DataRow(cells: [
                DataCell(Text('?????? ??????????')),
                DataCell(Text('2')),
                DataCell(Text('no type',
                    style: TextStyle(
                        color: Colors.white, backgroundColor: Colors.green))),
              ]),
            ],
          ),
        ]));
  }
}