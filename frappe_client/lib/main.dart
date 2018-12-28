import 'package:flutter/material.dart';
import 'package:frappe_client/api/frappe.api.pbgrpc.dart';
import 'package:frappe_client/grpc_commons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FrappeApp',
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
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(title: 'Don\'t worry, be Frappe!'),
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

class _MyHomePageState extends State<MyHomePage> {
  double _strength = 0;
  String res;
  bool _sugar;
  CoffeeType _type;


  @override
  void initState() {
    res = "niets gedaan";
    _sugar = false;
    _type = CoffeeType.BLACK;
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
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          <Widget>[
            Slider(
                value: _strength,
                onChanged: (double value) {
                  setState(() {
                    _strength = value;
                  });
                },
                label: "Strength",
                min: 0,
                max: 5
            ),
            SwitchListTile(
                value: _sugar,
                onChanged: (bool value) {
                  setState(() {
                    _sugar = value;
                  });
                },
                title: Text(
                    "Sugar?"
                )
            ),

            ButtonBar(
                alignment: MainAxisAlignment.center,
                children:
                <Widget>[
                  FlatButton(
                      onPressed: () => _type = CoffeeType.ESPRESSO,
                      color: Theme
                          .of(context)
                          .primaryColor,
                      child: Text(
                        "Espresso",
                        style: TextStyle(color: Colors.white),
                      )),
                  FlatButton(
                      onPressed: () => _type = CoffeeType.CAPPUCCINO,
                      color: Theme
                          .of(context)
                          .primaryColor,
                      child: Text(
                        "Cappuccino",
                        style: TextStyle(color: Colors.white),
                      )),
                  FlatButton(
                      onPressed: () => _type = CoffeeType.BLACK,
                      color: Theme
                          .of(context)
                          .primaryColor,
                      child: Text(
                        "Black",
                        style: TextStyle(color: Colors.white),
                      )),
                ]
            ),
            FlatButton(
                onPressed: () async => _brew(),
                color: Theme
                    .of(context)
                    .primaryColor,
                child: Text(
                  "Let's order some coffee!",
                  style: TextStyle(color: Colors.white),
                )),
            res.isNotEmpty ? Text("Server says: $res") : Container(),
          ],
        ),
      ),
    );
  }

  Future<void> _brew() async {
    CoffeeOrder coffeeOrder = CoffeeOrder();
    Coffee coffee = Coffee();
    coffee.type = _type;
    coffee.strength = _strength.round();
    coffee.sugar = _sugar;
    coffeeOrder.coffee = coffee;
    var coffeeClient = CoffeeServiceClient(GrpcClientSingleton().client);
    var orderedCoffee = await coffeeClient.brew(coffeeOrder);
    setState(() {
      res = "\n Strength: " + orderedCoffee.strength.toString() +
          "\n Type: " + orderedCoffee.type.toString() +
          "\n Sugar?" + orderedCoffee.sugar.toString();
    });
  }
}
