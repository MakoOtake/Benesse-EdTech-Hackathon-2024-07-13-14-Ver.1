import 'package:flutter/material.dart';

import 'room_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text("Nakama_0314"),
        actions:[
          Icon(Icons.add),
          Icon(Icons.settings),
        ],
      ),
      body: Center(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '部屋に参加する',
            ),
            ElevatedButton(
              child: Text("3年A組 7/14 20:00～"),
              onPressed:(){
                // Within the `FirstRoute` widget:
                //ここにボタンを押したときに呼ばれるコードを書く
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NextPage()),
                );
              
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
class NextPage extends StatelessWidget {
  const NextPage({super.key});
  //ここにイニシャライザを書く（よくわからなかったので放置 p.109）

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('3年A組　7/14 20:00～'),
      ),
          body: GridView.count(
    // Create a grid with 2 columns. If you change the scrollDirection to
    // horizontal, this produces 2 rows.
              crossAxisCount: 3,
    // Generate 100 widgets that display their index in the List.
                children: const<Widget>[
                  ListTile(
                    title: Text("山田太郎"),
                  ),
                  ListTile(
                    title: Text("田中唯"),
                  ),
                  ListTile(
                    title: Text("佐藤一郎"),
                  ),
                  ListTile(
                    title: Text("鈴木美咲"),
                  ),
                  ListTile(
                    title: Text("高橋健太"),
                  ),
                  ListTile(
                    title: Text("伊藤茉奈"),
                  ),
                  ListTile(
                    title: Text("渡辺美穂"),
                  ),
                  ListTile(
                    title: Text("渡辺亮介"),
                  ),
                  ListTile(
                    title: Text("中村さくら"),
                  ),
                ],
          ),//children
        );
  }
}